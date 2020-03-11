import React from 'react';
import { Route, Switch } from 'react-router-dom';
//Import all needed Components
import Header from './common/Header';
import HomePage from './home/HomePage';
import UsersPage from './users/UsersPage';
import LocationsPage from './locations/LocationsPage';
import PageNotFound from './PageNotFound';
import AdminPage from './admin/AdminPage';
import ProjectInfoPage from './projects/ProjectInfoPage';
import UserInfoPage from './projects/UserInfoPage';
import { ProjectsPage } from './projects/ProjectsPage';
import PersonalProfile from './personalProfile/personalProfile';
import Search from './search/search';
import '../scss/sidebar.scss';
import '../scss/profileMain.scss';
import './App.css';
import '../scss/search.scss';
const App = () => {
  return (
    <div className="App">
      <Header />

      <Switch>
        {/*All our Routes goes here!*/}
        <Route exact path="/homepage" component={HomePage} />
        <Route path="/users" component={UsersPage} />
        <Route
          path="/projects/:project/:user"
          component={UserInfoPage}
        />
        <Route
          path="/projects/:project"
          component={ProjectInfoPage}
        />
        <Route path="/projects" component={ProjectsPage} />
        <Route path="/locations" component={LocationsPage} />
        <Route
          exact
          path="/personalProfile"
          component={PersonalProfile}
        />
        {/* add admin component */}
        <Route path="/admin" component={AdminPage} />
        <Route path="/search" component={Search} />
        <Route component={PageNotFound} />
      </Switch>
    </div>
  );
};

export default App;
