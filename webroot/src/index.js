import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Switch, Route, Redirect, useHistory, useLocation } from "react-router-dom";
import { getToken } from './utils/utils';

import App from './components/App';

import * as serviceWorker from './serviceWorker';
import './assets/css/style.css';
import './assets/css/index.css';
import 'bootstrap/dist/css/bootstrap.min.css';

ReactDOM.render(
  <React.StrictMode>
    <BrowserRouter>
      <App />
      {/* <PrivateRoute path="/s">
            <AppS />
          </PrivateRoute> */}
    </BrowserRouter>
  </React.StrictMode>,
  document.getElementById('root')
);

function PrivateRoute({ children, ...rest }) {
  return (
    <Route
      {...rest}
      render={(location) => getToken() != null
        ? children
        : <Redirect to={{ pathname: '/login' }} />}
    />
  )
}

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
