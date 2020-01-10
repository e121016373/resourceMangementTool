import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';

const baseURL = `${SVC_ROOT}users/`;

const loadUsersSuccessData = users => {
  return { type: types.LOAD_USERS_SUCCESS, users: users };
};

export const loadUsers = () => {
  return dispatch => {
    return axios
      .get(baseURL + 'all', { headers })
      .then(response => {
        dispatch(loadUsersSuccessData(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};
