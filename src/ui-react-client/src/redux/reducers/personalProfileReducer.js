import * as types from '../actions/actionTypes';
import initialState from './_initialState';

const executeLoadPersonalProfileUser = (state, action) => {
  return action.payload;
};
const execteLoadDiscipline = (state, action) => {
  return { ...state, discipline: action.payload };
};
const execteEditLocation = (state, action) => {
  return { ...state, userProfile: action.payload };
};
export const personalProfileReducer = (
  state = initialState.currentUserProfile,
  action,
) => {
  switch (action.type) {
    case types.LOAD_PERSONALPROFILE:
      return executeLoadPersonalProfileUser(state, action);
    case types.EDIT_LOCATION:
      return execteEditLocation(state, action);
    default:
      return state;
  }
};

export default personalProfileReducer;
