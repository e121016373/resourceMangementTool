// import HomePage from './indexHome';
// import { Provider } from 'react-redux';
// import LoginPage from './components/login/LoginPage';
// import { render } from 'react-dom';
// import configureStore from './redux/configureStore';
// import React from 'react';
// import 'bootstrap/dist/css/bootstrap.min.css';
// import {
//   Route,
//   BrowserRouter as Router,
//   Switch,
//   Link,
// } from 'react-router-dom';
// import users from './indexApp';

// const store = configureStore();

// render(
//   <Provider store={store}>
//     <Router>
//       <Switch>
//         <Route exact path="/" component={HomePage} />
//         <Route path="/admin/login" component={LoginPage} />
//       </Switch>
//     </Router>
//   </Provider>,
//   document.getElementById('root'),
// );

import { runWithAdal } from 'react-adal';
import { authContext, headers } from './config/adalConfig';
const DO_NOT_LOGIN = true;

runWithAdal(
  authContext,
  () => {
    console.log('the header is ', headers);
    // eslint-disable-next-line
    require('./indexHome');
  },
  DO_NOT_LOGIN,
);
