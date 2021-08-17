import React, { Component } from 'react';
import { fetchReq } from '../utils/utils';
import { Link } from 'react-router-dom';
import _ from 'lodash';

export default class DetailBlock extends Component {
    constructor(props) {
        super(props);

        this.state = {

        }

    }

    render() {
        const { image, title, col00, cell00, col01, cell01, col10, cell10, col11, cell11, col20, cell21} = this.props;

        return (
            <div className="row movie-details-header movie-details-block">
                <div className="col-md-2 header-backdrop">
                    <img alt="movie backdrop image" height="250" src={image} />
                </div>
                <div className="col-md-9"><h1 className="movie-title"> {title} </h1>
                    <div className="row movie-highlights">
                        <div className="col-md-2">
                            <div className="heading-and-data">
                                <div className="movie-details-heading"> {col00} </div>
                                <div> {cell00} </div>
                            </div>
                            <div className="heading-and-data">
                                <div className="movie-details-heading"> {col01} </div>
                                <div> {cell01} </div>
                            </div>
                        </div>
                        <div className="col-md-3">
                            <div className="heading-and-data">
                                <div className="movie-details-heading"> {col10} </div>
                                <div> {cell10} </div>
                            </div>
                            <div className="heading-and-data">
                                <div className="movie-details-heading"> {col11} </div>
                                <div> {cell11} </div>
                            </div>
                        </div>
                        <div className="col-md-6">
                            <div className="heading-and-data">
                                <div className="movie-details-heading">{col20}</div>
                                {cell21}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}