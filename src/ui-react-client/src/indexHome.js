import React from 'react';
import { render } from 'react-dom';
import './scss/home.scss';
import configureStore from './redux/configureStore';
import { Provider } from 'react-redux';
import { runWithAdal } from 'react-adal';
import { authContext } from './config/adalConfig';
import Button from 'react-bootstrap/Button';
import 'bootstrap/dist/css/bootstrap.min.css';
import './css/ProjectsTableStyle.css';

const store = configureStore();
const DO_NOT_LOGIN = true;

render(
  <Provider store={store}>
    <div className="main">
      <Button
        size="lg"
        variant="outline-secondary"
        className="my-button"
        onClick={authentication}
      >
        users
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
      require('./indexApp.js');
    },
    DO_NOT_LOGIN,
  );
}
function admin() {
  require('./indexAdmin.js');
}
