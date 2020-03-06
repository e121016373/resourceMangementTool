import React from 'react';
import loginImg from '../svg/login.svg';
import '../../scss/personalProfile.scss';
import 'bootstrap/dist/css/bootstrap.min.css';
import Button from 'react-bootstrap/Button';
import table from 'react-bootstrap/table';

export class PersonalProfile extends React.Component {
  constructor(props) {
    super(props);
  }
  personProfile = {
    firstName: 'Wenhong',
    lastName: 'Zhang',
    userName: 'winton',
    location: "N'Edmonton",
  };
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
  render() {
    return (
      <div className="base-container" ref={this.props.containerRef}>
        <div className="header">PersonalProfile</div>
        <div className="content">
          <div className="section">
            <table class="table table-bordered">
              <tbody>
                <tr>
                  <td>FirstName</td>
                  <td>
                    <input
    id="firstName"
    type="text"
    defaultValue={this.personProfile.firstName}
    />
                  </td>
                </tr>
                <tr>
                  <td>LastName</td>
                  <td>
                    <input
                      id="lastName"
                      type="text"
                      defaultValue={this.personProfile.lastName}
                    ></input>
                  </td>
                </tr>
                <tr>
                  <td>UserName</td>
                  <td>
                    <input
                      id="userName"
                      type="text"
                      defaultValue={this.personProfile.userName}
                    ></input>
                  </td>
                </tr>
                <tr>
                  <td>Location</td>
                  <td>
                    <input
                      id="location"
                      type="text"
                      defaultValue={this.personProfile.location}
                    ></input>
                  </td>
                </tr>
              </tbody>
            </table>
            <button
              type="button"
              class="btn btn-outline-secondary"
              onClick={this.updatePersonalProfile}
            >
              update
            </button>
          </div>
          <div className="section">
            <table class="table table-bordered">
              <tbody>
                <tr>
                  <th scope="col">Discipline</th>
                  <th scope="col">Skills</th>
                  <th scope="col">Years of experience</th>
                </tr>
                {this.skills.map(skill => {
                  return (
                    <tr>
                      <td>{skill.Discipline}</td>
                      <td>{skill.Skills}</td>
                      <td>{skill['Years of experience']}</td>
                      <td>
                        <button
                          onClick={i => this.delete(i)}
                          className="fa fa-trash-o fa-lg"
                        ></button>
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
            <button
              type="button"
              class="btn btn-outline-secondary"
              onClick={this.add}
            >
              add
            </button>
          </div>
          <div className="section">
            <table class="table table-bordered">
              <tbody>
                <tr>
                  <th scope="col" colSpan="3">
                    FORCAST
                  </th>
                </tr>
                <tr>
                  <th scope="col">Project Title</th>
                  <th scope="col">Location</th>
                  <th scope="col">Assigned Hours</th>
                </tr>
                <tr>
                  <td>UI Design</td>
                  <td>N'Edmonton</td>
                  <td>30</td>
                </tr>
                <tr>
                  <td>Displine2</td>
                  <td>N'Vancouver</td>
                  <td>50</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    );
  }
  updatePersonalProfile = () => {
    this.personProfile.firstName = document.getElementById(
      'firstName',
    ).value;
    this.personProfile.userName = document.getElementById(
      'userName',
    ).value;
    this.personProfile.lastName = document.getElementById(
      'lastName',
    ).value;
    this.personProfile.location = document.getElementById(
      'location',
    ).value;
    console.log(this.personProfile);
  };
  add = () => {};
  delete = i => {
    this.skills = this.skills.splice(1, 1);
    console.log(this.skills);
  };
}
