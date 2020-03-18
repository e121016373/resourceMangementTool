import React from 'react';
import './scss/home.scss';
import configureStore from './redux/configureStore';
import { Provider } from 'react-redux';
import { runWithAdal } from 'react-adal';
import { authContext, withAdalLoginApi } from './config/adalConfig';
import Button from 'react-bootstrap/Button';
import 'bootstrap/dist/css/bootstrap.min.css';
import AdminPage from './components/admin/AdminPage';
import LandingPage from './components/landingPage/LandingPage';
import Users from './indexApp';
import { render } from 'react-dom';
import LoginPage from './components/login/LoginPage';
import {
  Route,
  BrowserRouter as Router,
  Switch,
} from 'react-router-dom';
// import LoginPage from './components/login/LoginPage';
const store = configureStore();
const MyProtectedPage = withAdalLoginApi(
  () => {
    return console.log('ok');
  },
  () => {
    return <h1>loading</h1>;
  },
  error => {
    return console.log(error);
  },
);
// render={() => <MyProtectedPage />}
render(
  <Provider store={store}>
    <Router>
      <Switch>
        <Route exact path="/" component={LandingPage} />
        <Route path="/admin/login" component={LoginPage} />
        <Route path="/users" render={() => <MyProtectedPage />} />
      </Switch>
    </Router>
  </Provider>,
  document.getElementById('root'),
);
