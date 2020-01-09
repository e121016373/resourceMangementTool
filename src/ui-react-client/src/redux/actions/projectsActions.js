import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';

const baseURL = `${SVC_ROOT}projects/`;

export function loadMostRecentProjectsSuccess(projects) {
  return {
    type: types.LOAD_MOST_RECENT_PROJECTS_SUCCESS,
    projects: projects,
  };
}

export function loadMostRecentProjects() {
  return function(dispatch) {
    return axios
      .get(baseURL + 'most-recent', { headers })
      .then(response => {
        dispatch(loadMostRecentProjectsSuccess(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
}
