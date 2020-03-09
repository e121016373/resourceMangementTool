import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';
import { authContext } from '../../config/adalConfig';

const baseURL = `${SVC_ROOT}users/${
  authContext.getCachedUser().userName.split('@')[0]
}`;

export const loadUserProfile = userProfile => {
  return { type: types.LOAD_PERSONALPROFILE, payload: userProfile };
};

export const loadPersonalProfile = () => {
  return dispatch => {
    console.log('the URL is ', baseURL);
    return axios
      .get(baseURL, { headers })
      .then(response => {
        dispatch(loadUserProfile(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};
