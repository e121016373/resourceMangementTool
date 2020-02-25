import React from 'react';
import { Route, Switch } from 'react-router-dom';
//Import all needed Components
import Header from './common/Header';
import HomePage from './home/HomePage';
import UsersPage from './users/UsersPage';
import ProjectsPage from './projects/ProjectsPage';
import LocationsPage from './locations/LocationsPage';
import PageNotFound from './PageNotFound';
import AdminPage from './admin/AdminPage';
const App = () => {
  return (
    <>
      <Header />
      <Switch>
        {/*All our Routes goes here!*/}
        {/* <Route exact path="/users" component={HomePage} />
        <Route path="/users/users" component={UsersPage} />
        <Route path="/users/projects" component={ProjectsPage} />
        <Route path="/users/locations" component={LocationsPage} /> */}

        <Route exact path="/" component={HomePage} />
        <Route path="/users" component={UsersPage} />
        <Route path="/projects" component={ProjectsPage} />
        <Route path="/locations" component={LocationsPage} />
        {/* add admine component */}
        {/* <Route path="/users/admin" component={AdminPage} /> */}
        <Route path="/admin" component={AdminPage} />
        <Route component={PageNotFound} />
      </Switch>
    </>
  );
};

export default App;
