import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';

const baseURL = `${SVC_ROOT}projects/`;

const loadProjectsMostRecentSuccessData = projects => {
  return {
    type: types.LOAD_PROJECTS_MOST_RECENT,
    projects: projects,
  };
};

const loadProjectsData = projects => {
  return {
    type: types.LOAD_PROJECTS_ALL,
    projects: projects,
  };
};

const createProjectData = project => {
  return {
    types: types.CREATE_PROJECT,
    project: project,
  };
};

const updateProjectData = project => {
  return {
    types: types.UPDATE_PROJECT,
    project: project,
  };
};

const deleteProjectData = project => {
  return {
    types: types.DELETE_PROJECT,
    project: project,
  };
};

export const loadProjectsMostRecent = () => {
  return dispatch => {
    return axios
      .get(`${baseURL}most-recent`, { headers })
      .then(response => {
        dispatch(loadProjectsMostRecentSuccessData(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};

export const loadProjects = () => {
  return dispatch => {
    return axios
      .get(`${baseURL}all`, { headers })
      .then(response => {
        dispatch(loadProjectsData(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};

export const createProject = () => {
  return dispatch => {
    return axios
      .post(baseURL, { headers })
      .then(response => {
        dispatch(createProjectData(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};

export const updateProject = () => {
  return dispatch => {
    return axios
      .put(baseURL, { headers })
      .then(response => {
        dispatch(updateProjectData(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};

export const deleteProject = number => {
  return dispatch => {
    return axios
      .delete(`${baseURL}${number}`, { headers })
      .then(response => {
        dispatch(deleteProjectData(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};
