import React from 'react';
import { render } from 'react-dom';
import './css/home.css';
import configureStore from './redux/configureStore';
import { Provider } from 'react-redux';
import { runWithAdal } from 'react-adal';
import { authContext, headers } from './config/adalConfig';
import Button from 'react-bootstrap/Button';
import 'bootstrap/dist/css/bootstrap.min.css';

const store = configureStore();
const DO_NOT_LOGIN = false;

render(
  <Provider store={store}>
    <div className="main">
      <Button
        size="lg"
        variant="outline-secondary"
        className="my-button"
        onClick={authentication}
      >
        user
      </Button>
      <Button
        size="lg"
        variant="outline-secondary"
        className="my-button"
        onClick={admin}
      >
        admin
      </Button>
    </div>
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
