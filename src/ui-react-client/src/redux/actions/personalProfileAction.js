import * as types from './actionTypes';
import { SVC_ROOT } from '../../config/config';
import { headers } from '../../config/adalConfig';
import axios from 'axios';
import { authContext } from '../../config/adalConfig';

const currentUser = authContext
  .getCachedUser()
  .userName.split('@')[0];

const baseURL = `${SVC_ROOT}users/${currentUser}`;
let currentDiscipline = '';

export const loadUserProfile = (
  userProfile,
  disciplines,
  skills,
  projects,
  currentDiscipline,
) => {
  if (!disciplines) disciplines = [];
  if (!skills) skills = [];
  if (disciplines[0]) {
    currentDiscipline = disciplines[0];
  } else {
  }
  let profile = {
    userProfile: userProfile,
    disciplines: disciplines,
    skills: skills,
    projects: projects,
    currentDiscipline: disciplines[0],
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
          .get(`${SVC_ROOT}${currentUser}/disciplines`, {
            headers,
          })
          .then(disciplines => {
            console.log('the discipline is ', disciplines.data);
            if (disciplines.data[0]) {
              axios
                .get(
                  `${SVC_ROOT}${currentUser}/skills/${disciplines.data[0].discipline}`,
                  {
                    headers,
                  },
                )
                .then(skills => {
                  console.log(disciplines, skills);

                  //load the project of the user

                  // let projectURL = ""
                  // axios.get(url,{headers}).then(

                  // ).catch()
                  let tempProjects = [
                    {
                      project: 'LLLLLLLLLLLL',
                      location: 'Toronto',
                      fromDate: '03/08/2020',
                      toDate: '11/11/2021',
                      active: 'true',
                      updatedAt: '03/09/2020',
                      hours: 30,
                    },
                    {
                      project: 'Aliquam qui ',
                      location: 'Saskatoon',
                      fromDate: '03/08/2020',
                      toDate: '11/11/2021',
                      active: 'true',
                      updatedAt: '03/09/2020',
                      hours: 30,
                    },
                    {
                      project: 'Architecto sint ',
                      location: 'Fort McMurray',
                      fromDate: '03/08/2020',
                      toDate: '11/11/2021',
                      active: 'false',
                      updatedAt: '03/09/2020',
                      hours: 35,
                    },
                  ];

                  dispatch(
                    loadUserProfile(
                      response.data,
                      disciplines.data,
                      skills.data.map(skill => {
                        return { skill: skill.name };
                      }),
                      tempProjects.map(project => {
                        let tempproject = {
                          project: project.project,
                          location: project.location,
                          fromDate: project.fromDate,
                          toDate: project.toDate,
                          updatedAt: project.updatedAt,
                          active: project.active,
                        };
                        return tempproject;
                      }),
                      disciplines.data[0].discipline,
                    ),
                  );
                })
                .catch(error => {
                  throw error;
                });
            }

            //dispath when there is no disciplines
            dispatch(
              loadUserProfile(response.data, disciplines.data, []),
            );
            // console.log('the personal skill', disSkillResponse);
            // let disciplines = [
            //   { discipline: 'Service', 'Years of experience': '1' },
            //   { discipline: 'Delivery', 'Years of experience': '2' },
            //   { discipline: 'MC', 'Years of experience': '3' },
            // ];
            // let skills = [
            //   { skill: 'Class Environmental Assessments' },
            //   { skill: 'conditon assessments' },
            //   { skill: 'commissioning' },
            //   { skill: 'conceptual Design' },
            // ];
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
      })
      .catch(error => {
        throw error;
      });
  };
};
export const deleteDiscipline = discipline => {
  return dispatch => {
    console.log(discipline);
    //return dispatch(deleteDisciplineAction(discipline));
    let url = `${SVC_ROOT}${currentUser}/disciplines/${discipline.discipline}`;
    console.log('the delete url is ', url);
    return axios
      .delete(url, { header: headers })
      .then(response => {
        console.log('deleteDiscipline response', response);
        dispatch(deleteDisciplineAction(discipline));
        if (discipline.discipline === currentDiscipline.discipline) {
          dispatch(updateSkillTableAction([]));
        }
      })
      .catch(error => {
        throw error;
      });
  };
};

export const deleteDisciplineAction = discipline => {
  return {
    type: types.DELETE_DISCIPLINE,
    payload: discipline,
  };
};

export const deleteSkillAction = skill => {
  return {
    type: types.DELETE_SKILL,
    payload: skill,
  };
};
export const deleteSkill = skill => {
  return dispatch => {
    console.log('the skill is ', skill);
    let url = `${SVC_ROOT}${currentUser}/${currentDiscipline.discipline}/${skill.skill}`;
    console.log('the skill url is ', url);
    return axios
      .delete(url, { header: headers })
      .then(response => {
        console.log('the delete skill response', response);
        return dispatch(deleteSkillAction(skill));
      })
      .catch(error => {
        throw error;
      });
  };
};

export const addSkill = skill => {
  return dispatch => {
    let url = `${SVC_ROOT}personal`;
    console.log('the skill url is ', url);
    console.log({
      username: currentUser,
      skill: skill,
      discipline: currentDiscipline.discipline,
      yoe: currentDiscipline.yoe,
    });
    return axios
      .post(
        url,
        {
          username: currentUser,
          skill: skill,
          discipline: currentDiscipline.discipline,
          yoe: currentDiscipline.yoe,
        },
        { header: headers },
      )
      .then(response => {
        console.log('add skill response', response);
        return dispatch(
          addSkillAction({ skill: response.data.skill }),
        );
      })
      .catch(error => {
        throw error;
      });
  };
};

export const addSkillAction = skill => {
  return {
    type: types.ADD_SKILL,
    payload: skill,
  };
};

export const addDiscipline = (discipline, yoe) => {
  return dispatch => {
    let url = `${SVC_ROOT}${currentUser}/disciplines`;
    console.log('the add discipline url is ', url, discipline, yoe);
    return axios
      .post(
        url,
        { discipline: discipline, yoe: parseInt(yoe, 10) },
        { header: headers },
      )
      .then(response => {
        console.log('the add discipline response', response);
        return dispatch(addDisciplineAction(response.data));
      })
      .catch(error => {
        throw error;
      });
  };
};

export const addDisciplineAction = discipline => {
  return {
    type: types.ADD_DISCIPLINE,
    payload: discipline,
  };
};

export const updateSkillTable = discipline => {
  return dispatch => {
    let url = `${SVC_ROOT}${currentUser}/skills/${discipline.discipline}`;
    console.log('the updateSkillTable url is ', url);
    return axios
      .get(url, { header: headers })
      .then(response => {
        currentDiscipline = discipline;

        console.log('the add discipline response', response);
        return dispatch(
          updateSkillTableAction(
            response.data.map(skill => {
              return { skill: skill.name };
            }),
            discipline,
          ),
        );
      })
      .catch(error => {
        throw error;
      });
  };
};

export const updateSkillTableAction = (skills, discipline) => {
  return {
    type: types.UPDATE_SKILL_TABLE,
    payload: { skills, discipline },
  };
};
