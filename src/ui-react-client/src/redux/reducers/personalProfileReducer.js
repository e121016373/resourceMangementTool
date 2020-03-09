import * as types from '../actions/actionTypes';
import initialState from './_initialState';

const executeLoadPersonalProfileUser = action => {
  return action.payload;
};

export const personalProfileReducer = (
  state = initialState.currentUserProfile,
  action,
) => {
  switch (action.type) {
    case types.LOAD_PERSONALPROFILE:
      return executeLoadPersonalProfileUser(action);
    default:
      return state;
  }
};

export default personalProfileReducer;
