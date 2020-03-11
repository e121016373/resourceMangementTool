import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';
import { authContext } from '../../config/adalConfig';

const currentUser = authContext
  .getCachedUser()
  .userName.split('@')[0];

const baseURL = `${SVC_ROOT}users/${currentUser}`;

export const loadUserProfile = (userProfile, disciplines, skills) => {
  let profile = {
    userProfile: userProfile,
    disciplines: disciplines,
    skills: skills,
  };
  return { type: types.LOAD_PERSONALPROFILE, payload: profile };
};

// export const loadUserDisciplineAction = discipline => {
//   return { type: types.LOAD_USERDISCIPLINE_ALL, payload: discipline };
// };

export const loadPersonalProfile = () => {
  return dispatch => {
    console.log('the URL is ', baseURL);
    return axios
      .get(baseURL, { headers })
      .then(response => {
        //discipline request
        axios
          .get(`${SVC_ROOT}userdisciplines/${currentUser}`, {
            headers,
          })
          .then(disciplinesResponse => {
            //skills request
            axios
              .get(`${SVC_ROOT}userskills/${currentUser}`, {
                headers,
              })
              .then(skillsResponse => {
                dispatch(
                  loadUserProfile(
                    response.data,
                    disciplinesResponse.data,
                    skillsResponse.data,
                  ),
                );
              })
              .catch(error => {
                throw error;
              });
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

// export const loadUserDiscipline = () => {
//   return dispatch => {
//     console.log(`${SVC_ROOT}userdisciplines/${currentUser}`, baseURL);
//     return axios
//       .get(baseURL, { headers })
//       .then(response => {
//         dispatch(loadUserDisciplineAction(response.data));
//       })
//       .catch(error => {
//         throw error;
//       });
//   };
// };
