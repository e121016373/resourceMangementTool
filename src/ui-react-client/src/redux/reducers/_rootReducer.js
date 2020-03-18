import { combineReducers } from 'redux';
import users from './usersReducer';
import projects from './projectsReducer';
import locations from './locationsReducer';
import loginReducer from './loginReducer';

const rootReducer = combineReducers({
  users: users,
  projects: projects,
  locations: locations,
  loginPayload: loginReducer,
});

export default rootReducer;
