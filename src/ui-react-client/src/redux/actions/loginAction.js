import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';

const baseURL = `${SVC_ROOT}adminLogin/`;

//this return value will be action.type and action.login
export const loadLogin = payload => {
  return { type: types.LOGING, payload: payload[0] };
};

//make a get request to the backend, the result will be stored in response
//dispatch to the reducer
export const login = () => {
  return dispatch => {
    console.log('inlongin');
    return axios
      .get(baseURL, { headers })
      .then(loginResponse => {
        console.log(loginResponse.data[0]);
        dispatch(loadLogin(loginResponse.data));
      })
      .catch(error => {
        throw error;
      });
  };
};
