import React, { Component } from 'react';
import { data } from './data/DoughnutConfig';
import { Doughnut } from 'react-chartjs-2';
import Posts from './post';
import Table from './table';
import * as msg from './feedbackMsg/feedbackMsg';
import { Modal } from './modal';
import personImage from '../../image/person.png';

const ProfileMain = ({
  skills,
  disciplines,
  personalProfileUser,
}) => {
  const addSkill = () => {
    this.setState({
      ...this.state,
      showAddSkill: !this.state.showAddSkill,
    });
  };
  const addDiscipline = () => {
    this.setState({
      ...this.state,
      showAddDiscipline: !this.state.showAddDiscipline,
    });
  };

  return (
    <div className="profileMain">
      <Modal />
      {/* <msg.ShowSuccessMsg
        msg={[
          { type: 'success', data: 'good job0', show: true },
          {
            type: 'error',
            data: 'there is an error1',
            show: true,
          },
          { type: 'success', data: 'good job2', show: true },
        ]}
      /> */}
      <div
        style={{ display: 'flex', 'flex-direction': 'row' }}
        className="card"
      >
        <div className="sidebar">
          <div>
            <div className="profileImage">
              <div className="personImage">
                <img src={personImage}></img>
              </div>
            </div>
            <div className="profileText">
              {/* <h4>Welcome</h4> */}
              <h5 style={{ color: 'grey' }}>
                {personalProfileUser.username}
              </h5>
              <h5 style={{ color: 'grey' }}>vancouver</h5>
            </div>
            <div className="btn-red">Edit</div>
            {/* <Modal /> */}
          </div>
        </div>
        <div className="col1">
          <div className="card">
            <div className="chart">
              <Doughnut data={data} />
            </div>
          </div>
          <div
            className="card"
            style={{ display: 'flex', 'flex-direction': 'column' }}
          >
            <table className="table">
              <tbody>
                <tr>
                  <th scope="col">Discipline</th>
                  <th scope="col">Years of experience</th>
                  <th scope="col">peration</th>
                </tr>
                {disciplines.map((discipline, index) => {
                  return (
                    <tr>
                      <td>{discipline.discipline}</td>
                      <td>{discipline.yoe}</td>
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
            </table>
            <div className="button-add">
              <i
                // onClick={addDiscipline}
                class="far fa-plus-square fa-2x"
              ></i>
            </div>

            {/* add discipline component */}
            {false ? (
              <div className="content-add">
                <input
                  style={{ width: 80 }}
                  placeholder="Discipline"
                ></input>
                <input
                  style={{ width: 140 }}
                  placeholder="Years of experience"
                ></input>
                <button>submit</button>
              </div>
            ) : null}
          </div>
        </div>

        {/* column 2 */}
        <div className="col2">
          <div
            className="card"
            style={{ display: 'flex', 'flex-direction': 'column' }}
          >
            <table className="table">
              <tbody>
                <tr>
                  <th scope="col">Skills</th>
                  <th scope="col">operation</th>
                </tr>
                {skills.map((skill, index) => {
                  return (
                    <tr>
                      <td>{skill.Skills}</td>
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
            </table>
            <div>
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
            </div>
            <div className="button-add">
              <i
                style={{ cursor: 'pointer' }}
                onClick={addSkill}
                class="far fa-plus-square fa-2x"
              ></i>
            </div>

            {/* add skill component */}
            {false ? (
              <div className="content-add">
                <input
                  style={{ width: 70 }}
                  placeholder="skill"
                ></input>

                <button>submit</button>
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
};
export default ProfileMain;
