import { combineReducers } from 'redux';
import users from './usersReducer';
import projects from './projectsReducer';
import locations from './locationsReducer';
import personalProfileReducer from './personalProfileReducer';
import disciplinesReducer from './disciplinesReducer';
import skillsReducer from './skillsReducer';
import feedbackReducer from './feedbackReducer';
const rootReducer = combineReducers({
  users: users,
  projects: projects,
  locations: locations,
  currentUserProfile: personalProfileReducer,
  disciplines: disciplinesReducer,
  skills: skillsReducer,
  feedbacks: feedbackReducer,
});

export default rootReducer;
