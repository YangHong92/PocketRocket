import React, { Component } from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';
import { fetchReq } from '../../utils/utils';

import avatar from '../../assets/img/avatar.png';
import DetailBlock from '../../components/DetailBlock';
import RowFrame from '../../components/RowFrame';

class UserPage extends Component {
    constructor(props) {
        super(props);

        this.state = {
            userId: props.match.params.userId,
        }
    }

    componentDidMount() {
        const { userId } = this.state;

        const url1 = `/api/getUserById/${userId}`
        fetchReq(url1).then(data => {
            this.setState({
                title: 'User' + String(data.userId),
                cell00: data.watchedCount,
                cell01: String(data.avgRating) + ' stars',
                cell10: String(data.highestRating) + ' stars',
                cell11: String(data.lowestRating) + ' stars',
                cell21: data.favGenres
            })
        }).catch(msg =>
            alert(msg)
        )

        const url2 = `/api/getUserWatchedMovies/${userId}`
        fetchReq(url2).then(data => {
            this.setState({
                userWatchedMovies: data
            })
        }).catch(msg =>
            alert(msg)
        )

        const url3 = `/api/getUserRecommendation/${userId}`
        fetchReq(url3).then(data => {
            this.setState({
                userRecommendation: data
            })
        }).catch(msg =>
            alert(msg)
        )
    };

    getUserWatchedMovies() {
        const { userWatchedMovies } = this.state;

        return <RowFrame isTitleLink={false}
            titleIcon={<i className="far fa-eye"></i>}
            title='User Watched Movies'
            data={userWatchedMovies} />
    }

    getUserRecMovies() {
        const { userRecommendation } = this.state;

        return <RowFrame isTitleLink={false}
            titleIcon={<i className="far fa-thumbs-up"></i>}
            title='Recommended For You'
            data={userRecommendation} />
    }

    render() {
        const { title, cell00, cell01, cell10, cell11, cell21 } = this.state;

        return (
            <div style={{ backgroundColor: 'lavender' }}>
                <div className="ml4-container" style={{ minHeight: '920px' }}>
                    <div id="main-container">
                        <div className="movie-alt" id="movie-details-container">
                            <DetailBlock
                                image={avatar}
                                title={title}
                                col00={'#Watched Movies'} cell00={cell00}
                                col01={'Average Rating Score'} cell01={cell01}
                                col10={'Highest Rating Score'} cell10={cell10}
                                col11={'Lowest Rating Score'} cell11={cell11}
                                col20={'Genre Watched Most'} cell21={cell21}
                            />
                        </div>
                        <div className="frontpage" id="recPage">
                            {this.getUserWatchedMovies()}
                            {this.getUserRecMovies()}
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default withRouter(UserPage)