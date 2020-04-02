import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';

const baseURL = `${SVC_ROOT}skills/`;

export const searchUsersAction = users => {
  return { type: types.SEARCH_USERS, payload: users };
};
// {
//   "discipline": "airports",
//   "yoe": "3-5 years",
//   "skill": "aprons",
//   "location": "kitchener",
//   "fromDate": "2020-07-01",
//   "toDate": "2021-01-01",
//   "availability": 40
// }

export const searchUsers = content => {
  let url = `${SVC_ROOT}search/users`;
  console.log('the contenet is ', content);
  //console.log(JSON.stringify(content));
  //console.log('the contenet is ', content);
  // content = {
  //   discipline: 'Environmental Management',
  //   yoe: '3-5 years',
  //   //skill: 'aprons',
  //   //location: 'kitchener',
  //   fromDate: '2020-04-01',
  //   toDate: '2021-04-01',
  //   //availability: 40,
  // };
  return dispatch => {
    const options = {
      method: 'POST',
      headers: headers,
      data: content,
      url,
    };
    return axios(options)
      .then(response => {
        response = response.data.map(item => {
          let availability = (item.availability * 100 + '').split(
            '.',
          )[0];
          return {
            name: item.username,
            experience: item.yoe,
            Skill: item.skill,
            Location: item.location,
            Availability: availability + '%',
          };
        });
        console.log('the search reposen is ', response);
        dispatch(searchUsersAction(response));
      })
      .catch(error => {
        throw error;
      });
  };
};
