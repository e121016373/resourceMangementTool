import * as types from '../actions/actionTypes';
import initialState from './_initialState';

function executeLoadUsersSuccessData(action) {
  return action.users;
}

export default function usersReducer(
  state = initialState.users,
  action,
) {
  switch (action.type) {
    case types.LOAD_USERS_SUCCESS:
      return executeLoadUsersSuccessData(action);
    default:
      return state;
  }
}
