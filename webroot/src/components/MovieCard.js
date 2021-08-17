import React, { Component } from 'react';

import { Link } from 'react-router-dom';

export default class MovieCard extends Component {
    constructor(props) {
        super(props);

        this.state = {

        }

    }

    render() {
        const { link, movieName, rating, year, movieId } = this.props;
        let src = ''
        try {
            src = require(`../assets/img/posters/${movieId}.jpg`)
        }catch{
            src = require(`../assets/img/posters/alt.png`)
        }
        

        return (
            <div className="movie-row-item" style={{ marginRight: '5px' }}>
                <div className="movie-card-md1">
                    <div className="card">
                        <Link to={link}>
                            <span>
                                <div className="poster">
                                    <img src={src}/>
                                </div>
                            </span>
                        </Link>
                        <div className="overlay">
                            <div className="above-fold">
                                <Link to={link}>
                                    <span><p className="title"> {movieName} </p></span>
                                </Link>
                                <div className="rating-indicator">
                                    <div className="rating-or-prediction predicted">
                                        <i className="fas fa-star" height="14px"></i>
                                        <div className="rating-value">
                                            {rating}
                                        </div>
                                    </div>
                                </div>
                                <p className="year">{year}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}