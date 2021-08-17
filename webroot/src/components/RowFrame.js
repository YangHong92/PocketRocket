import React, { Component } from 'react';
import { fetchReq } from '../utils/utils';
import { Link } from 'react-router-dom';
import _ from 'lodash';

import MovieCard from './MovieCard';

export default class RowFrame extends Component {
    constructor(props) {
        super(props);

        this.state = {

        }

    }

    addMovieCards(data, maxShow){
        const display = maxShow ? data.slice(0, maxShow) : data;
        const movies = _.map(display, (item, index) => {
            return(<MovieCard key={`movie-card-${index}`}
                            link={`/movie/${item.movieId}`}
                            movieName={item.movieName} 
                            rating={item.rating} 
                            year={item.releaseYear}
                            movieId={item.movieId}/>)
        })
        
        return <div style={{display: 'flex', flexFlow: 'row wrap', justifyContent: 'start'}}>
            {movies}
        </div>
    }

    render() {
        const { titleColor, isTitleLink, titleIcon, title, data, maxShow } = this.props;

        return (
            <div className="frontpage-section-top">
                <div className="explore-header frontpage-section-header" style={titleColor ? {color: titleColor} : {}}>
                    {isTitleLink ? <Link className="plainlink" title="go to the full list" to={`/collection/${title}`}> 
                                        <span style={{textTransform: 'capitalize'}}> {title} </span>
                                </Link>
                    : <span style={{textTransform: 'capitalize'}}> {titleIcon} {title} </span>}
                </div>
                <div className="movie-row">
                    <div className="movie-row-bounds">
                        <div className="movie-row-scrollable" style={{ marginLeft: '0px' }}>
                            {this.addMovieCards(data, maxShow)}
                        </div>
                    </div>
                    <div className="clearfix"></div>
                </div>
            </div>
        )
    }
}