import { combineReducers } from 'redux';
import users from './usersReducer';
import projects from './projectsReducer';
import locations from './locationsReducer';
import skills from './skillsReducer';

const rootReducer = combineReducers({
  users: users,
  projects: projects,
  locations: locations,
  skills:skills,
});

export default rootReducer;
