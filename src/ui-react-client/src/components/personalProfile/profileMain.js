import React, { Component } from 'react';
import { data } from './data/DoughnutConfig';
import { Doughnut } from 'react-chartjs-2';
import Posts from './post';
import Table from './table';
import * as msg from './feedbackMsg/feedbackMsg';
import { Modal } from './modal';
export class ProfileMain extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      showAddSkill: false,
      showAddDiscipline: false,
      skills: this.skills,
      personalProfile: this.personProfile,
    };
  }
  skills = [
    {
      Discipline: 'discipline1',
      Skills: 'skill1',
      'Years of experience': '1-3',
    },
    {
      Discipline: 'discipline2',
      Skills: 'skill2',
      'Years of experience': '1-3',
    },
    {
      Discipline: 'discipline3',
      Skills: 'skill3',
      'Years of experience': '1-3',
    },
  ];
  delete = index => {
    // this.skills = this.skills.splice(1, 1);
    // console.log('the index is ', index);
  };
  addSkill = () => {
    this.setState({
      ...this.state,
      showAddSkill: !this.state.showAddSkill,
    });
  };
  addDiscipline = () => {
    this.setState({
      ...this.state,
      showAddDiscipline: !this.state.showAddDiscipline,
    });
  };
  render() {
    return (
      <div className="profileMain">
        <Modal />
        <msg.ShowSuccessMsg
          msg={[
            { type: 'success', data: 'good job0', show: true },
            {
              type: 'error',
              data: 'there is an error1',
              show: true,
            },
            { type: 'success', data: 'good job2', show: true },
          ]}
        />
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
                {this.skills.map((skill, index) => {
                  return (
                    <tr>
                      <td>{skill.Discipline}</td>
                      <td>{skill['Years of experience']}</td>
                      <td>
                        <button
                          onClick={this.delete(index)}
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
                onClick={this.addDiscipline}
                class="far fa-plus-square fa-2x"
              ></i>
            </div>

            {/* add discipline component */}
            {this.state.showAddDiscipline ? (
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
                {this.skills.map((skill, index) => {
                  return (
                    <tr>
                      <td>{skill.Skills}</td>
                      <td>
                        <button
                          onClick={this.delete(index)}
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
                onClick={this.addSkill}
                class="far fa-plus-square fa-2x"
              ></i>
            </div>

            {/* add skill component */}
            {this.state.showAddSkill ? (
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
          <div>
            <Table />
          </div>
        </div>
      </div>
    );
  }
}
export default ProfileMain;
