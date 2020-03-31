import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';

const baseURL = `${SVC_ROOT}projects/`;

export const loadProjectsMostRecentData = projects => {
  return {
    type: types.LOAD_PROJECTS_MOST_RECENT,
    projects: projects,
  };
};

export const loadProjectsData = projects => {
  return {
    type: types.LOAD_PROJECTS_ALL,
    projects: projects,
  };
};

export const createProjectAction = project => {
  return {
    type: types.CREATE_PROJECT,
    payload: project,
  };
};

export const updateProjectData = project => {
  return {
    type: types.UPDATE_PROJECT,
    project: project,
  };
};

export const deleteProjectData = projectName => {
  return {
    type: types.DELETE_PROJECT,
    payload: projectName,
  };
};

export const loadProjectsMostRecent = () => {
  return dispatch => {
    return axios
      .get(`${baseURL}most-recent`, { headers })
      .then(response => {
        dispatch(loadProjectsMostRecentData(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};

//changed
export const loadProjects = () => {
  return dispatch => {
    let URL = `${SVC_ROOT}activatedlist`;
    //console.log('the load Project URL is ', URL);
    return axios
      .get(URL, { headers })
      .then(response => {
        console.log('the response of loadProject is ', response);
        response = response.data.map(item => {
          return {
            Name: item.project,
            Location: item.location,
            StartDate: (item.fromDate + '').split('T')[0],
            EndDate: (item.toDate + '').split('T')[0],
            UpdateTime: (item.updatedAt + '').split('T')[0],
            Status: item.status,
          };
        });
        dispatch(loadProjectsData(response));
      })
      .catch(error => {
        throw error;
      });
  };
};

export const createProject = project => {
  //console.log(project);
  return dispatch => {
    let URL = `${SVC_ROOT}projects`;
    //console.log('url is ', URL);
    return axios
      .post(baseURL, { headers }, { data: project })
      .then(response => {
        console.log('createProJECT RESPOSE is ', response);
        let item = response.data;
        response = {
          Name: item.project,
          Location: item.location,
          StartDate: (item.fromDate + '').split('T')[0],
          EndDate: (item.toDate + '').split('T')[0],
          UpdateTime: (item.updatedAt + '').split('T')[0],
          Status: item.status,
        };
        dispatch(createProjectAction(response));
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

export const deleteProject = name => {
  return dispatch => {
    let URL = `${SVC_ROOT}projects/${name}`;
    return axios
      .delete(URL, { headers })
      .then(response => {
        //console.log('the repose is ', response);
        dispatch(deleteProjectData(name));
      })
      .catch(error => {
        throw error;
      });
  };
};

export const loadDetails = (projectName, fromDate, toDate) => {
  return dispatch => {
    let url = `${SVC_ROOT}util/${projectName}`;
    return axios
      .get(url, { headers })
      .then(response => {
        console.log('the load detail', response);
        return dispatch(
          loadDetailAction(
            projectName,
            response.data,
            fromDate,
            toDate,
          ),
        );
      })
      .catch(error => {
        throw error;
      });
  };
};

export const loadDetailAction = (
  projectName,
  response,
  fromDate,
  toDate,
) => {
  projectName = projectName;
  let parsedResponse = response.map(item => {
    return {
      resource: item.resource,
      fromDate: fromDate,
      toDate: toDate,
      projectName: projectName,
      year: [
        {
          jan: item.jan,
          feb: item.feb,
          mar: item.mar,
          apr: item.apr,
          may: item.may,
          jun: item.jun,
          jul: item.jul,
          aug: item.aug,
          sep: item.sep,
          oct: item.oct,
          nov: item.nov,
          dec: item.dec,
        },
        {
          jan: item.jan2,
          feb: item.feb2,
          mar: item.mar2,
          apr: item.apr2,
          may: item.may2,
          jun: item.jun2,
          jul: item.jul2,
          aug: item.aug2,
          sep: item.sep2,
          oct: item.oct2,
          nov: item.nov2,
          dec: item.dec2,
        },
      ],
    };
  });
  return {
    type: types.LOAD_DETAILS,
    payload: { details: parsedResponse },
  };
};
