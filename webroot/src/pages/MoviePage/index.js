import React, { Component } from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';
import { fetchReq } from '../../utils/utils';

import DetailBlock from '../../components/DetailBlock';
import RowFrame from '../../components/RowFrame';

import _ from 'lodash';

class MoviePage extends Component {
    constructor(props) {
        super(props);

        this.state = {
            movieId: props.match.params.movieId,
        }
    }

    processWatchedUsers(userArray){
        return _.map(userArray, (userId, index) => {
            return <Link key={`watched-user-${index}`} to={`/user/${String(userId)}`}>
                <b>{`User${userId}`}&nbsp;&nbsp;</b>
            </Link>
        })
    }

    getMovieData(movieId){
        const url1 = `/api/getMovieById/${movieId}`
        fetchReq(url1).then(data => {
            this.setState({
                movieId: movieId,
                title: data.movieName,
                cell00: data.releaseYear,
                cell01: <a target="_blank" href={`http://www.imdb.com/title/tt${String(data.imdbId)}`}>imdb</a>,
                cell10: String(data.rating) + ' stars',
                cell11: data.genres,
                cell21: _.split(data.favoredByUsers, ',')
            })
        }).catch(msg => {
            alert(msg);
        });

        const url2 = `/api/getRelatedMovies/${movieId}`
        fetchReq(url2).then(data => {
            this.setState({
                related: data
            })
        }).catch(msg => {
            alert(msg);
        });
    }

    componentDidMount() {
        const { movieId } = this.state;
        this.getMovieData(movieId)
    }

    componentDidUpdate(prevProps) {
        if (this.props.match.params.movieId !== prevProps.match.params.movieId) {
            this.getMovieData(this.props.match.params.movieId)
        }
    }

    getRelatedMovies() {
        const { related } = this.state;
        return <RowFrame isTitleLink={false}
            titleIcon={<i className="fas fa-film"></i>}
            title={'Related Movies'}
            data={related} />
    }

    render() {
        const { movieId, title, cell00, cell01, cell10, cell11, cell21 } = this.state;
        let src = ''
        try {
            src = require(`../../assets/img/posters/${movieId}.jpg`)
        }catch{
            src = require(`../../assets/img/posters/alt.png`)
        }

        return (
            <div style={{ backgroundColor: 'linen' }}>
                <div className="ml4-container" style={{ minHeight: '920px' }}>
                    <div id="main-container">
                        <div className="movie-alt" id="movie-details-container">
                            <DetailBlock
                                image={src}
                                title={title}
                                col00={'Release Year'} cell00={cell00}
                                col01={'Links'} cell01={cell01}
                                col10={'Average ratings'} cell10={cell10}
                                col11={'Genres'} cell11={cell11}
                                col20={'Who likes the movie most'} cell21={this.processWatchedUsers(cell21)}
                            />
                        </div>
                        <div className="frontpage" id="recPage">
                            {this.getRelatedMovies()}
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default withRouter(MoviePage)