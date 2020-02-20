import React from 'react';
import { render } from 'react-dom';
import { BrowserRouter as Router } from 'react-router-dom';
import './indexApp.css';
import App from './components/App';
import configureStore from './redux/configureStore';
import { Provider } from 'react-redux';
import AdminPage from './components/admin/AdminPage';
import { runWithAdal } from 'react-adal';
import { Route, Switch, Link, Redirect } from 'react-router-dom';
import { authContext, headers } from './config/adalConfig';

const store = configureStore();
const DO_NOT_LOGIN = false;

render(
  <Provider store={store}>
    <button onClick={authentication}>user</button>
    <button onClick={admin}>admine</button>
  </Provider>,
  document.getElementById('root'),
);
function authentication() {
  runWithAdal(
    authContext,
    () => {
      console.log('the headers is ' + headers.Authorization);
      // eslint-disable-next-line
      require('./indexApp.js');
    },
    DO_NOT_LOGIN,
  );
}
function admin() {
  console.log('go the admine');
  require('./indexAdmin.js');
}
