import * as types from '../actions/actionTypes';
import initialState from './_initialState';

const executeLoadMostRecentProjectsSuccessData = action => {
  return action.projects;
};

export const projectsReducer = (
  state = initialState.projects,
  action,
) => {
  switch (action.type) {
    case types.LOAD_MOST_RECENT_PROJECTS_SUCCESS:
      return executeLoadMostRecentProjectsSuccessData(action);
    default:
      return state;
  }
};

export default projectsReducer;
