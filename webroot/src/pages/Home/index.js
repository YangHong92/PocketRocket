import React, { Component } from 'react';
import { withRouter } from 'react-router';
import { fetchReq } from '../../utils/utils';
import _ from 'lodash';

import RowFrame from '../../components/RowFrame';

class Home extends Component {
    constructor(props) {
        super(props);
        this.state = {

        }

        this.genres = ['Adventure', 'Drama', 'Action', 'Children', 'Comedy', 'Thriller', 'Documentary', 'Animation'];
        //Crime, Mystery, Horror, Fantasy, Western, Film-Noir, Romance, War
    }

    componentDidMount() {

        _.forEach(this.genres, (item) => {
            const url = `/api/getMoviesByGenre/${item}`

            fetchReq(url).then(data => {
                this.setState({
                    [item]: data
                })
            }).catch(msg => {
                alert(msg);
            });
        })

    }

    componentWillReceiveProps() {

    }

    componentWillUnmount() {

    }

    addRowFrames() {
        const rows = _.map(this.genres, (genre, index) => {
            return (<RowFrame key={`home-row-${index}`}
                titleColor={'white'}
                isTitleLink={true}
                title={genre}
                data={this.state[genre] || []}
                maxShow={8} />)
        })

        return <div>
            {rows}
        </div>
    }

    render() {

        return (
            <div style={{ backgroundColor: 'black' }}>
                <div className="ml4-container" style={{ minheight: '920px' }}>
                    <div id="main-container">
                        <div className="frontpage" id="recPage">
                            {this.addRowFrames()}
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default withRouter(Home);