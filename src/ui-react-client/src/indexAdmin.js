import React from 'react';
import {
  Route,
  Switch,
  NavLink,
  BrowserRouter as Router,
} from 'react-router-dom';
//Import all needed Components
// import AdminPage from './components/admin/AdminPage';
import { render } from 'react-dom';
import { Provider } from 'react-redux';
import configureStore from './redux/configureStore';
import LoginPage from './components/login/LoginPage';
import AdminPage from './components/admin/AdminPage';
const store = configureStore();
const indexAdmin = render(
  <Provider store={store}>
    <Router>
      <Route path="/adminpage" component={AdminPage} />
    </Router>
    <LoginPage />
  </Provider>,
  document.getElementById('root'),
);
export default indexAdmin;
