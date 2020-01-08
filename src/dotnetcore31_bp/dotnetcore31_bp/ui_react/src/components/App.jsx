import React from 'react';
import { Route, Switch } from 'react-router-dom';
import Home from './home/Home';
import Expenses from './expenses/Expenses';
import Users from './users/Users';
import PageNotFound from './PageNotFound';
import Header from './common/Header';

const App = () => {
  return (
    <>
      <Header />
      <Switch>
        {/* All our Routes goes here! */}
        <Route exact path="/" component={Home} />
        <Route path="/users" component={Users} />
        <Route path="/expenses" component={Expenses} />
        <Route component={PageNotFound} />
      </Switch>
    </>
  );
};

export default App;
