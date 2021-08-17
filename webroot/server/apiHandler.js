const express = require('express');
const router = express.Router();
const jwtUtil = require('./jwtUtil');

const { getMoviesByGenre, getMovieById, getRelatedMovies,
    getUserById, getUserWatchedMovies, getUserRecommendation } = require('./dataManager');

router.get('/api/get', (req, res) => {
    const name = req.query.name;
    res.setHeader('Content-Type', 'application/json');
    res.send(JSON.stringify({ get: `Sent via GET: ${name}` }));
});

router.post('/api/post', (req, res) => {
    res.send(
        `Sent via POST request: ${req.body.post}`,
    );
});

// HomePage
router.post('/api/getMoviesByGenre/:genre', (req, res) => {
    const genre = req.params.genre;
    const conn = res.app.get('sqlConnection');
    getMoviesByGenre(conn, genre)
        .then(data => {
            res.status(200).json({
                success: true,
                data: data
            });
        }).catch(err => {
            console.log(err);
        });

});

// MoviePage
router.post('/api/getMovieById/:movieId', (req, res) => {
    const movieId = parseInt(req.params.movieId);
    const conn = res.app.get('sqlConnection');
    getMovieById(conn, movieId)
        .then(data => {
            res.status(200).json({
                success: true,
                data: data[0]
            });
        }).catch(err => {
            console.log(err);
        });

});

router.post('/api/getRelatedMovies/:movieId', (req, res) => {
    const movieId = parseInt(req.params.movieId);
    const rdsConn = res.app.get('rdsConnection');
    const sqlConn = res.app.get('sqlConnection');
    getRelatedMovies(rdsConn, sqlConn, movieId)
        .then(data => {
            res.status(200).json({
                success: true,
                data: data
            });
        }).catch(err => {
            console.log(err);
        });
});

// UserPage
router.post('/api/getUserById/:userId', (req, res) => {
    const userId = parseInt(req.params.userId);
    const conn = res.app.get('sqlConnection');
    getUserById(conn, userId)
        .then(data => {
            res.status(200).json({
                success: true,
                data: data[0]
            });
        }).catch(err => {
            console.log(err);
        });
});

router.post('/api/getUserWatchedMovies/:userId', (req, res) => {
    const userId = parseInt(req.params.userId);
    const conn = res.app.get('sqlConnection');
    getUserWatchedMovies(conn, userId)
        .then(data => {
            res.status(200).json({
                success: true,
                data: data
            });
        }).catch(err => {
            console.log(err);
        });
});

router.post('/api/getUserRecommendation/:userId', (req, res) => {
    const userId = parseInt(req.params.userId);
    const rdsConn = res.app.get('rdsConnection');
    const sqlConn = res.app.get('sqlConnection');
    getUserRecommendation(rdsConn, sqlConn, userId, 'neuralcf')
        .then(data => {
            res.status(200).json({
                success: true,
                data: data
            });
        }).catch(err => {
            console.log(err);
        });

});


module.exports = router;