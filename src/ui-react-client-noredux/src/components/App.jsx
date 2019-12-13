import React from 'react';
import {
  BrowserRouter as Router,
  Route,
  Link,
} from 'react-router-dom';
import Home from './home/Home';
import Expenses from './expenses/Expenses';
import Users from './users/Users';
import { authContext } from '../config/AdalConfig';

const App = () => {
  return (
    <Router>
      <div>
        <button
          type="submit"
          className="logout-button"
          onClick={() => authContext.logOut()}
        >
          Log Out
        </button>
      </div>
      <div>
        <ul>
          <li>
            <Link to="/">Home</Link>
          </li>
          <li>
            <Link to="/users">Users</Link>
          </li>
          <li>
            <Link to="/expenses">Expenses</Link>
          </li>
        </ul>
        {/* All our Routes goes here! */}
        <Route exact path="/" component={Home} />
        <Route path="/users" component={Users} />
        <Route path="/expenses" component={Expenses} />
      </div>
    </Router>
  );
};

export default App;
