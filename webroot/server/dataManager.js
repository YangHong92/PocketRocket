const axios = require('axios');
const _ = require('lodash');
const similarity = require('compute-cosine-similarity');
const { modelApi } = require('./config');

function embStringToNumArray(s) {
    return _.map(_.split(JSON.parse(s), ' '), item => {
        return parseFloat(item)
    })
}

function dotProduct(vector1, vector2) {
    let result = 0;
    for (let i = 0; i < 3; i++) {
        result += vector1[i] * vector2[i];
    }
    return result;
}

function getMovieInfoByIds(conn, ids) {
    const matching_id_list = ids.map(item => item.movieId).join(',');

    const sql = `
    select r.movieId, round(avg_rating, 2) as rating, movieName, releaseYear from(
    select movieId, avg(rating) as avg_rating
    from ratings
    where movieId in (${matching_id_list})
    group by movieId
    )r
    join(
    select movieId, movieName, releaseYear
    from movies
    ) m
    on r.movieId = m.movieId
    order by avg_rating desc
    `
    return new Promise((resolve, reject) => {
        conn.query(sql, function (err, rows) {
            if (err) {
                reject(err)
            } else {
                resolve(rows)
            }
        })
    })
}

function getMoviesByGenre(conn, genre) {
    const sql = `
    select m.movieId, movieName, releaseYear, substring_index(genres, '|', 1) as genre, round(avg_rating, 2) as rating
    from movies m
    join (
    select movieId, avg(rating) as avg_rating
    from ratings
    group by movieId
    ) t
    on m.movieId = t.movieId
    where substring_index(genres, '|', 1) = ?
    order by avg_rating desc
    `
    return new Promise((resolve, reject) => {
        conn.query(sql, [genre], function (err, rows) {
            if (err) {
                reject(err)
            } else {
                resolve(rows)
            }
        })
    })
}

function getMovieById(conn, movieId) {
    const sql = `
    select * from 
    (select m.movieId, m.movieName, m.releaseYear, substring_index(genres, '|', 1) as genres, imdbId
    from movies m
    join links l on l.movieId = m.movieId
    where m.movieId = ?) movie_info
    join
    (select round(avg(rating), 2) as rating
    from ratings
    where movieId = ?) avg_rating
    join
    (select GROUP_CONCAT(userId) as favoredByUsers
    from (
        select movieId, userId, rating
        from ratings
        where movieId = ?
        order by rating desc
        limit 5
    ) t
    group by movieId
    ) favoredByUsers
    `

    return new Promise((resolve, reject) => {
        conn.query(sql, [movieId, movieId, movieId], function (err, rows) {
            if (err) {
                reject(err)
            } else {
                resolve(rows)
            }
        })
    })
}

function getSimilarMovieIds(rdsConn, movieId) {
    let mEmb = null;
    let similarityScores = [];

    // get user embedding
    rdsConn.get('m' + movieId).then(mEmbStr => {
        mEmb = embStringToNumArray(mEmbStr)
    });

    return new Promise((resolve, reject) => {
        const stream = rdsConn.scanStream({ match: "m*" });

        stream.on("data", (resultKeys) => {
            _.forEach(resultKeys, item => {
                if (_.parseInt(item.slice(1)) != movieId) {
                    rdsConn.get(item).then(mEmdStr => {
                        // skip those movies not having embedding
                        if (mEmdStr) {
                            // retrieve similiar items by comparing similarity
                            similarityScores.push({ "movieId": _.parseInt(item.slice(1)), "score": dotProduct(mEmb, embStringToNumArray(mEmdStr)) })
                        }
                    })
                }
            })
        });
        stream.on("end", () => {
            resolve(_.sortBy(similarityScores, ['score']).reverse().slice(0, 40))
        });
    });
}

async function getRelatedMovies(rdsConn, sqlConn, movieId) {
    const candidates = await getSimilarMovieIds(rdsConn, movieId)
    const related = await getMovieInfoByIds(sqlConn, candidates);

    return related;
}

function getUserById(conn, userId) {
    const sql = `
    select * from (
    select userId, count(rating) as watchedCount, round(avg(rating), 2) as avgRating,
    max(rating) as highestRating, min(rating) as lowestRating
    from ratings
    where userId = ?) user_rating_info
    join
    (select genres as favGenres, count(genres) as favGenresCount from (
        select m.movieId, substring_index(genres, '|', 1) as genres, rating, userId
        from movies m
        join ratings r
        on m.movieId = r.movieId
        where userId = ?
        ) t
    group by genres
    order by count(genres) desc
    limit 1) user_fav_genre
    `

    return new Promise((resolve, reject) => {
        conn.query(sql, [userId, userId], function (err, rows) {
            if (err) {
                reject(err)
            } else {
                resolve(rows)
            }
        })
    })
}

function getUserWatchedMovies(conn, userId) {
    const sql = `
    select m.movieId, movieName, releaseYear, round(avg_rating, 2) as rating
    from movies m
    join (
    select movieId, avg(rating) as avg_rating
    from ratings
    where movieId in (
        select movieId from ratings r
        where userId = ?
        order by timestamp desc
    )
    group by movieId
    ) t
    on m.movieId = t.movieId
    `

    return new Promise((resolve, reject) => {
        conn.query(sql, [userId], function (err, rows) {
            if (err) {
                reject(err)
            } else {
                resolve(rows)
            }
        })
    })

}

function getModelPrediction(rdsConn, sqlConn, userId, model) {
    let uEmb = null;
    let similarityScores = [];

    // get user embedding
    rdsConn.get('u' + userId).then(uEmbStr => {
        uEmb = embStringToNumArray(uEmbStr)
        // console.log(`user${userId} embedding`, uEmb)
    });

    //get user not watched movies
    const sql = `
    select distinct movieId from ratings
    where movieId not in (
    select m.movieId from movies m
    join ratings r
    on m.movieId = r.movieId
    where userId = ?
    )   
    `
    return new Promise((resolve, reject) => {
        sqlConn.query(sql, [userId], function (err, rows) {
            if (err) {
                reject(err)
            } else {
                const notWatched = new Set(_.map(JSON.parse(JSON.stringify(rows)), 'movieId'));

                const stream = rdsConn.scanStream({ match: "m*" });
                stream.on("data", (resultKeys) => {
                    _.forEach(resultKeys, item => {
                        // only retrieve those not being watched   
                        if (notWatched.has(_.parseInt(item.slice(1)))) {
                            rdsConn.get(item).then(mEmdStr => {
                                // skip those movies not having embedding
                                if (mEmdStr) {
                                    // retrieve similiar items by comparing similarity
                                    similarityScores.push({ "userId": userId, "movieId": _.parseInt(item.slice(1)), "score": dotProduct(uEmb, embStringToNumArray(mEmdStr)) })
                                }
                            })
                        }
                    })
                });
                stream.on("end", () => {
                    const candidates = _.sortBy(similarityScores, ['score']).reverse().slice(0, 500)

                    // reformat for model input, feed model with top 500 similar movies
                    let reqInput = null;
                    if (!model || model === 'neuralcf') {
                        console.log("model using neuralcf")

                        reqInput = _.map(candidates, item => {
                            return {
                                "userId": item.userId,
                                "movieId": item.movieId
                            }
                        })
                    } else if (model === 'widendeep') {

                    }

                    // return model prediction
                    axios.post(modelApi, {
                        "instances": reqInput
                    }).then(res => {
                        resolve(_.map(res.data.predictions, (item, index) => {
                            return {
                                "userId": candidates[index].userId,
                                "movieId": candidates[index].movieId,
                                "score": candidates[index].score,
                                "prediction": item[0]
                            }
                        }))
                    }, err => {
                        reject(err);
                    });
                });
            }
        })
    })
}

async function getUserRecommendation(rdsConn, sqlConn, userId, model) {
    const moiviePrediction = await getModelPrediction(rdsConn, sqlConn, userId, model)
    const recMovieList = await getMovieInfoByIds(sqlConn,
        _.sortBy(moiviePrediction, ['prediction']).reverse().slice(0, 20));
        
    return recMovieList;
}

module.exports = {
    getMoviesByGenre: getMoviesByGenre,
    getMovieById: getMovieById,
    getRelatedMovies: getRelatedMovies,
    getUserById: getUserById,
    getUserWatchedMovies: getUserWatchedMovies,
    getUserRecommendation: getUserRecommendation
}