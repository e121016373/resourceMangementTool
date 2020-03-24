import React, { Component, useState } from 'react';
import { data } from './data/DoughnutConfig';
import { Doughnut } from 'react-chartjs-2';
import Posts from './post';
// import Table from './table';
import * as msg from '../feedbackMsg/feedbackMsg';
import { Modal } from './modal';
import personImage from '../../image/person.png';
import WTable from './my_table';
import { headers } from '../../config/adalConfig';
import WButton from './button';
import AutoComplete from '../autocomplete/autocomplete';
const ProfileMain = ({
  personalProfileUser,
  AllDisciplines,
  skills,
  deleteDiscipline,
  deleteSkill,
  addSkill,
  addDiscipline,
  updateSkillTable,
  addFeedback,
  disciplines,
  currentState,
  projects,
  currentDiscipline,
}) => {
  // console.log('All disciplines', AllDisciplines);
  const [showAddDiscipline, setShowAddDiscipline] = useState(false);
  const [showAddSkill, setShowAddSkill] = useState(false);
  const addSkillButton = () => {
    setShowAddSkill(true);
  };
  const addDisciplineButton = () => {
    console.log('show adddiscipline'.showAddDiscipline);

    setShowAddDiscipline(true);
    console.log('show adddiscipline'.showAddDiscipline);
  };
  const cancelAddSkill = () => {
    setShowAddSkill(false);
  };
  const cancelAddDiscipline = () => {
    setShowAddDiscipline(false);
  };
  const submitAddDiscipline = () => {
    let discipline = document.getElementById('addDisciplineName')
      .value;
    let yoe = document.getElementById('addDisciplineYOE').value;
    console.log('yoe isisisisiisis', yoe);
    addDiscipline(discipline, yoe)
      .then(() => {
        addFeedback({
          type: 'success',
          data: '  :add discipline successfully',
          show: true,
        });
      })
      .catch(error => {
        addFeedback({
          type: 'error',
          data: '  :add unsuccessfully',
          show: true,
        });
      });
    // console.log('disdflasdkfj', discipline, yoe);
  };
  const submitAddSkill = () => {
    let skill = document.getElementById('addSkillName').value;
    addSkill(skill)
      .then(() => {
        addFeedback({
          type: 'success',
          data: '  :add skill successfully',
          show: true,
        });
      })
      .catch(error => {
        addFeedback({
          type: 'error',
          data: '  :add unsuccessfully',
          show: true,
        });
      });
    // console.log('disdflasdkfj', skill);
  };
  // const discipline = [];
  // const parseDisSkill = () => {
  //   console.log('ssss', disSkill);
  //   let parsed = {};
  //   disSkill.map(temp => {
  //     if (!Object.keys(parsed).includes(temp.discipline)) {
  //       parsed[temp.discipline] = {};
  //       parsed[temp.discipline]['Years of experience'] = temp.yoe;
  //       parsed[temp.discipline]['Skills'] = [];
  //     }
  //     parsed[temp.discipline]['Skills'].push(temp.skill);
  //   });
  //   parsed = Object.entries(parsed);
  //   parsed.map(temp => {
  //     let dis = {};
  //     dis['discipline'] = temp[0];
  //     dis['Years of experience'] = temp[1]['Years of experience'];
  //     discipline.push(dis);
  //   });
  //   console.log('the displins are ', discipline);
  //   return parsed;
  // };
  // const parsedDisSkill = parseDisSkill();

  // const parseDiscipline = () => {};

  // let skills = parsedDisSkill[0][1]['Skills'];
  // const updateSkills = index => {
  //   console.log(disSkill);
  //   setSkills(parsedDisSkill[index][1]['Skills']);
  //   console.log(skills);
  // };

  const renderMain = () => {
    console.log('PROFILE main currentState', currentState);
    if (currentState === 'discipline') {
      return (
        <div className="profileMain">
          {/* <Modal /> */}

          <div
            style={{
              display: 'flex',
              'flex-direction': 'row',
              width: '100vw',
              height: '100vh',
              margin: 0,
              position: 'fixed',
            }}
            className="card"
          >
            <div
              style={{
                width: '50vw',
              }}
              className="col1"
            >
              <div
                className="card"
                style={{
                  display: 'flex',
                  'flex-direction': 'column',
                  padding: '10px',
                }}
              >
                <WTable
                  datas={disciplines}
                  tableHead={[
                    'Discipline',
                    'Years of experience',
                    'operation',
                  ]}
                  remove={deleteDiscipline}
                  selectRow={updateSkillTable}
                  addFeedback={addFeedback}
                  tableName={'Discipline'}
                />
                <div style={{ float: 'left' }}>
                  <WButton
                    buttonNameOne={'add'}
                    buttonNameTwo={'submit'}
                    id={'addDiscipline'}
                    onClickButtonOne={addDisciplineButton}
                    onClickButtonTwo={cancelAddDiscipline}
                  />
                </div>
                {/* <table className="table">
                <tbody>
                  <tr>
                    <th scope="col">Discipline</th>
                    <th scope="col">Years of experience</th>
                    <th scope="col">peration</th>
                  </tr>
                  {disciplines.map((discipline, index) => {
                    return (
                      <tr
                      // onClick={() => {
                      //   updateSkills(index);
                      // }}
                      >
                        <td>{discipline['discipline']}</td>
                        <td>{discipline['Years of experience']}</td>
                        <td>
                          <button
                            // onClick={this.delete(index)}
                            className="fas fa-trash-alt fa-1x"
                          ></button>
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table> */}
                {/* <div className="button-add">
                <i
                  // onClick={addDiscipline}
                  class="far fa-plus-square fa-2x"
                ></i>
              </div> */}

                {/* add discipline component */}
                {showAddDiscipline ? (
                  <div className="content-add">
                    <AutoComplete
                      elements={AllDisciplines}
                      placeholder={'disciplines'}
                      id={'addDisciplineName'}
                    />
                    <AutoComplete
                      elements={[]}
                      placeholder="Years of experience"
                      id={'addDisciplineYOE'}
                    />
                    {/* <input
                    id="addDisciplineYOE"
                    style={{ width: 140 }}
                    placeholder="Years of experience"
                  ></input> */}
                    <button
                      onClick={submitAddDiscipline}
                      style={{ borderRadius: '5px' }}
                    >
                      submit
                    </button>
                  </div>
                ) : null}
              </div>
            </div>

            {/* column 2 */}
            <div className="col2">
              <div
                className="card"
                style={{
                  display: 'flex',
                  'flex-direction': 'column',
                  padding: '10px',
                  'margin-left': 0,
                  width: '30vw',
                }}
              >
                <WTable
                  datas={skills}
                  tableHead={['skills', 'operation']}
                  remove={deleteSkill}
                  addFeedback={addFeedback}
                  tableName={
                    'Skills: ' + currentDiscipline.discipline
                  }
                />

                {/* <table className="table">
                <tbody>
                  <tr>
                    <th scope="col">Skills</th>
                    <th scope="col">operation</th>
                  </tr>
                  {skills.map((skill, index) => {
                    return (
                      <tr>
                        <td>{skill}</td>
                        <td>
                          <button
                            // onClick={this.delete(index)}
                            className="fas fa-trash-alt fa-1x"
                          ></button>
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table> */}
                {/* <div>
                <div class="pagination">
                  <a href="#">&laquo;</a>
                  <a href="#">1</a>
                  <a href="#" class="active">
                    2
                  </a>
                  <a href="#">3</a>
                  <a href="#">4</a>
  
                  <a href="#">&raquo;</a>
                </div>
              </div> */}
                <WButton
                  buttonNameOne={'add'}
                  buttonNameTwo={'submit'}
                  id={'addSkill'}
                  onClickButtonOne={addSkillButton}
                  onClickButtonTwo={cancelAddSkill}
                />

                {/* add skill component */}
                {showAddSkill ? (
                  <div className="content-add">
                    <input
                      id="addSkillName"
                      style={{ width: 70 }}
                      placeholder="skill"
                    ></input>

                    <button
                      onClick={submitAddSkill}
                      style={{ borderRadius: '5px' }}
                    >
                      submit
                    </button>
                  </div>
                ) : null}
              </div>

              {/* pagination table */}
              {/* <div>
              <Table />
            </div> */}
            </div>
          </div>
        </div>
      );
    } else if (currentState === 'project') {
      return (
        <div className="profileMain">
          <div
            style={{
              display: 'flex',
              'flex-direction': 'row',
              width: '100vw',
              height: '100vh',
              margin: 0,
              position: 'fixed',
              padding: '20px',
            }}
            className="card"
          >
            <div className="col1">
              <div
                className="card"
                style={{
                  display: 'flex',
                  'flex-direction': 'column',
                  padding: '10px',
                  width: '75vw',
                }}
              >
                <WTable
                  datas={projects}
                  tableName={'Project'}
                  tableHead={[
                    'name',
                    'location',
                    'start Date',
                    'end Date',
                    'update Time',
                    'active',
                  ]}
                  width={'100%'}
                ></WTable>
              </div>
            </div>
          </div>
        </div>
      );
    } else if (currentState === 'availabilty') {
      return <div>Availability</div>;
    }
  };

  return <div>{renderMain()}</div>;
};
export default ProfileMain;
