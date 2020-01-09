import * as types from '../actions/actionTypes';
import initialState from './_initialState';

function executeLoadMostRecentProjectsSuccessData(action) {
  return action.projects;
}

export default function projectsReducer(
  state = initialState.projects,
  action,
) {
  switch (action.type) {
    case types.LOAD_MOST_RECENT_PROJECTS_SUCCESS:
      return executeLoadMostRecentProjectsSuccessData(action);
    default:
      return state;
  }
}
