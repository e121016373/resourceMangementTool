import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';

const baseURL = `${SVC_ROOT}users/`;

export const loadUsersSuccess = users => {
  return { type: types.LOAD_USERS_SUCCESS, users: users };
};

export const loadUsers = () => {
  return function(dispatch) {
    return axios
      .get(baseURL + 'all', { headers })
      .then(response => {
        dispatch(loadUsersSuccess(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};
