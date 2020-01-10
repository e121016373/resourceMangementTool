import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';

const baseURL = `${SVC_ROOT}locations/`;

const loadLocationsSuccessData = locations => {
  return { type: types.LOAD_LOCATIONS_SUCCESS, locations: locations };
};

export const loadLocations = () => {
  return dispatch => {
    return axios
      .get(baseURL + 'all', { headers })
      .then(response => {
        dispatch(loadLocationsSuccessData(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};
