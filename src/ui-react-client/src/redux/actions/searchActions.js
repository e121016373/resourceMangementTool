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
  //console.log('the contenet is ', content);
  //console.log(JSON.stringify(content));
  //console.log('the contenet is ', content);
  // content = {
  //   discipline: 'airports',
  //   yoe: '3-5 years',
  //   skill: 'aprons',
  //   location: 'kitchener',
  //   fromDate: '2020-07-01',
  //   toDate: '2021-01-01',
  //   availability: 40,
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
        // response = [
        //   {
        //     name: 'mertza',
        //     experience: '1-3 years',
        //     Skill: 'environment',
        //     Location: 'kelowna',
        //     Availability: '18%',
        //   },
        //   {
        //     name: 'winton',
        //     experience: '1-3 years',
        //     Skill: 'environment',
        //     Location: 'kelowna',
        //     Availability: '20%',
        //   },
        //   {
        //     name: 'Alice',
        //     experience: '1-3 years',
        //     Skill: 'environment',
        //     Location: 'kelowna',
        //     Availability: '80%',
        //   },
        //   {
        //     name: 'Alice',
        //     experience: '1-3 years',
        //     Skill: 'environment',
        //     Location: 'kelowna',
        //     Availability: '45%',
        //   },
        //   {
        //     name: 'Alice',
        //     experience: '1-3 years',
        //     Skill: 'environment',
        //     Location: 'kelowna',
        //     Availability: '43%',
        //   },
        //   {
        //     name: 'Alice',
        //     experience: '1-3 years',
        //     Skill: 'environment',
        //     Location: 'kelowna',
        //     Availability: '90%',
        //   },
        //   {
        //     name: 'Alice',
        //     experience: '1-3 years',
        //     Skill: 'environment',
        //     Location: 'kelowna',
        //     Availability: '91%',
        //   },
        //   {
        //     name: 'Alice',
        //     experience: '1-3 years',
        //     Skill: 'environment',
        //     Location: 'kelowna',
        //     Availability: '91%',
        //   },
        //   {
        //     name: 'Alice',
        //     experience: '1-3 years',
        //     Skill: 'environment',
        //     Location: 'kelowna',
        //     Availability: '91%',
        //   },
        //];
        dispatch(searchUsersAction(response));
      })
      .catch(error => {
        throw error;
      });
  };
};
