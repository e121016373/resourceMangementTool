import { combineReducers } from 'redux';
import users from './usersReducer';
import projects from './projectsReducer';
import locations from './locationsReducer';
import personalProfileReducer from './personalProfileReducer';
const rootReducer = combineReducers({
  users: users,
  projects: projects,
  locations: locations,
  currentUserProfile: personalProfileReducer,
});

export default rootReducer;
