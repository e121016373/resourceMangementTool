import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';

const baseURL = `${SVC_ROOT}skills/`;

export const searchUsersAction = users => {
  return { type: types.SEARCH_USERS, payload: users };
};

export const searchUsers = () => {
  return dispatch => {
    return axios
      .get(baseURL, { headers })
      .then(response => {
        response = [
          {
            name: 'mertza',
            experience: '1-3 years',
            Skill: 'environment',
            Location: 'kelowna',
            Availability: '18%',
          },
          {
            name: 'winton',
            experience: '1-3 years',
            Skill: 'environment',
            Location: 'kelowna',
            Availability: '20%',
          },
          {
            name: 'Alice',
            experience: '1-3 years',
            Skill: 'environment',
            Location: 'kelowna',
            Availability: '100%',
          },
        ];
        dispatch(searchUsersAction(response));
      })
      .catch(error => {
        throw error;
      });
  };
};
