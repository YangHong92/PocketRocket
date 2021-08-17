import React, { Component } from 'react';
import {
    Switch,
    Route,
    Link, 
    Redirect, 
    NavLink
  } from 'react-router-dom';

import Home from '../pages/Home';
import MoviePage from '../pages/MoviePage';
import UserPage from '../pages/UserPage';
import CollectionPage from '../pages/CollectionPage';

import _ from 'lodash';

export default class App extends Component {
    constructor(props) {
        super(props);

        this.state = {

        }

    }

    render() {
        return (
            <div>
                <header className="base-compact-header">
                    <div className="ml4-container base-header-primary-container">
                        <div className="base-header-logo-container" style={{fontSize: '20px'}}>
                            <span className="base-header-logo-main">
                                <Link to="/">
                                    {/* <img alt="Pocket Rocket Logo" height="30px" src={logo} /> */}
                                    <span><i className="fas fa-wind"></i><i className="fas fa-rocket"></i>&nbsp;&nbsp;<span style={{color: '#595757'}}>Pocket Rocket Recommender</span></span>
                                </Link>
                            </span>
                        </div>
                    </div>
                </header>
                <div className="base-compact-header-spacer"></div>

                <main>
                    <Switch>
                        <Route path="/user/:userId">
                            <UserPage />
                        </Route>
                        <Route path="/movie/:movieId">
                            <MoviePage />
                        </Route>
                        <Route path="/collection/:genre">
                            <CollectionPage/>
                        </Route>
                        <Route path="/">
                            <Home />
                        </Route>
                    </Switch>
                </main>
            </div>
        )
    }
}