import React from 'react';
import {
  Route,
  Switch,
  NavLink,
  BrowserRouter as Router,
} from 'react-router-dom';
//Import all needed Components
import AdminPage from './components/admin/AdminPage';
import { render } from 'react-dom';
import { Provider } from 'react-redux';
import configureStore from './redux/configureStore';
const store = configureStore();
render(
  <Provider store={store}>
    <Router>
      <h1>what???</h1>
      <NavLink to="/admin">admin</NavLink>
      <Switch>
        <nav>
          <Route path="/admin" component={AdminPage} />
        </nav>
      </Switch>
    </Router>
  </Provider>,
  document.getElementById('root'),
);
