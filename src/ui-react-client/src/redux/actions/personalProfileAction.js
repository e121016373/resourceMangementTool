import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';
import { authContext } from '../../config/adalConfig';

const currentUser = authContext
  .getCachedUser()
  .userName.split('@')[0];

const baseURL = `${SVC_ROOT}users/${currentUser}`;

export const loadUserProfile = (userProfile, disSkill) => {
  let profile = {
    userProfile: userProfile,
    disSkill: disSkill,
  };
  console.log('the total is ', profile);
  return { type: types.LOAD_PERSONALPROFILE, payload: profile };
};

export const editLocationAction = userProfile => {
  return {
    type: types.EDIT_LOCATION,
    payload: userProfile.data,
    status: userProfile.status,
  };
};

// export const loadUserDisciplineAction = discipline => {
//   return { type: types.LOAD_USERDISCIPLINE_ALL, payload: discipline };
// };

export const loadPersonalProfile = () => {
  return dispatch => {
    console.log('the URL is ', baseURL);

    //personal profile
    return axios
      .get(baseURL, { headers })
      .then(response => {
        console.log('the personal profile response ', response);

        //discipline and skill request
        axios
          .get(`${SVC_ROOT}personal/${currentUser}`, {
            headers,
          })
          .then(disSkillResponse => {
            console.log('the personal skill', disSkillResponse);
            dispatch(
              loadUserProfile(response.data, disSkillResponse.data),
            );
          })
          .catch(error => {
            throw error;
          });
      })
      .catch(error => {
        throw error;
      });
  };
};

export const editLocation = profile => {
  return dispatch => {
    console.log('editlocatio url', `${SVC_ROOT}users`, baseURL);
    let url = `${SVC_ROOT}users`;
    return axios
      .patch(url, { header: headers }, { data: profile })
      .then(response => {
        dispatch(editLocationAction(response));
        return response;
      })
      .catch(error => {
        throw error;
      });
  };
};
