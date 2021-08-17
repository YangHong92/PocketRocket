import React, { Component } from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';
import { fetchReq } from '../../utils/utils';

import RowFrame from '../../components/RowFrame';

import _ from 'lodash';

class CollectionPage extends Component {
    constructor(props) {
        super(props)

        this.state = {
            genre: props.match.params.genre,
        }

    }

    componentDidMount() {
        const { genre } = this.state;

        const url = `/api/getMoviesByGenre/${genre}`
        fetchReq(url).then(data => {
            this.setState({
                movies: data
            })
        }).catch(msg => {
            alert(msg);
        });
    }

    getGenreMovies() {
        const { genre, movies } = this.state;

        return <RowFrame isTitleLink={false}
            title={genre}
            data={movies} />
    }


    render() {

        return (
            <div style={{ backgroundColor: 'inherit' }}>
                <div className="ml4-container" style={{ minheight: '920px' }}>
                    <div id="main-container">
                        <div className="frontpage" id="recPage">
                            {this.getGenreMovies()}
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default withRouter(CollectionPage)