import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';

const baseURL = `${SVC_ROOT}locations/`;

const loadLocationsSuccess = locations => {
  return { type: types.LOAD_LOCATIONS_SUCCESS, locations: locations };
};

export const loadLocations = () => {
  return function(dispatch) {
    return axios
      .get(baseURL + 'all', { headers })
      .then(response => {
        dispatch(loadLocationsSuccess(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};
