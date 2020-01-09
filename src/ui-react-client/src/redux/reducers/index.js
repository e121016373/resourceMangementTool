import { combineReducers } from 'redux';
import locations from './locationsReducer';
import users from './usersReducer';

const rootReducer = combineReducers({
  locations: locations,
  users: users,
});

export default rootReducer;
