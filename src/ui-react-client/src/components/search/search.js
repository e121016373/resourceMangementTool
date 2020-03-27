import React, { useEffect, useState } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import AutoComplete from './autocomplete';
import { loadDisciplines } from '../../redux/actions/disciplinesActions';
import { loadSkills } from '../../redux/actions/skillsActions';
import { loadLocations } from '../../redux/actions/locationsActions';
import WTable from '../personalProfile/my_table';
import { searchUsers } from '../../redux/actions/searchActions';
const Search = ({
  disciplines,
  loadDisciplines,
  skills,
  loadSkills,
  locations,
  loadLocations,
  searchUsers,
  searchUsersResult,
}) => {
  // const [parsedDisciplines, setParsedDisciplines] = useState([]);
  useEffect(() => {
    if (disciplines.length === 0) {
      loadDisciplines().catch(error => {
        alert('Loading disciplines failed' + error);
      });
    }
    if (skills.length === 0) {
      loadSkills().catch(error => {
        alert('Loading skills failed' + error);
      });
    }
    if (locations.length === 0) {
      loadLocations().catch(error => {
        alert('Loading locations failed' + error);
      });
    }
  }, [
    disciplines,
    loadDisciplines,
    skills,
    loadSkills,
    locations,
    loadLocations,
  ]);
  const parseDisciplines = () => {
    if (disciplines.length !== 0) {
      let disciplinesName = disciplines.map(discipline => {
        return discipline.name;
      });
      // setParsedDisciplines(disciplinesName);
      return disciplinesName;
    }
  };
  const parseSkills = () => {
    if (skills.length !== 0) {
      let skillsName = skills.map(skill => {
        return skill.name;
      });
      // setParsedDisciplines(disciplinesName);
      return skillsName;
    }
  };
  const parseLocations = () => {
    if (locations.length !== 0) {
      let locationName = locations.map(location => {
        return location.name;
      });
      // setParsedDisciplines(disciplinesName);
      return locationName;
    }
  };
  const tableHead = [
    'Name',
    'Experience',
    'Skill',
    'Location',
    'Availability',
  ];
  const search = () => {
    searchUsers();
  };
  const addPeople = () => {};
  return (
    <div>
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
        <div
          style={{
            width: '37vw',
            padding: '10px',
          }}
          className="col1"
        >
          <div
            className="card"
            style={{
              display: 'flex',
              'flex-direction': 'column',
              margin: 0,
              'margin-top': '30px',
              padding: '20px',
              'padding-top': '5px',
            }}
          >
            <div
              style={{
                'border-bottom': '2px solid #ccc',
                margin: '0',
              }}
              className="row"
            >
              <div className="header">
                <h3>Search</h3>
              </div>
            </div>
            <table>
              <div className="line"></div>
              <tr>
                <td>
                  <div className="title">
                    <i class="fas fa-user-graduate mr-4 fa-lg"></i>
                    Discipline
                  </div>
                </td>
                <td>
                  <AutoComplete elements={parseDisciplines()} />
                </td>
              </tr>
              <tr>
                <td>
                  <div className="title">
                    <i class="fas fa-user-clock mr-3 fa-lg"></i>
                    experience
                  </div>
                </td>
                <td>
                  <select className="searchBox">
                    <option value="0">1-3 years</option>
                    <option value="1">3-5 years</option>
                    <option value="2">5-10 years</option>
                    <option value="3">10+ years</option>
                  </select>
                </td>
              </tr>
              <tr>
                <td>
                  <div className="title">
                    <i class="fas fa-book mr-4 fa-lg"></i>
                    Skills
                  </div>
                </td>
                <td>
                  <AutoComplete elements={parseSkills()} />
                </td>
              </tr>
              <tr>
                <td>
                  <div className="title">
                    <i class="fas fa-calendar-day mr-4 fa-lg"></i>
                    Date
                  </div>
                </td>
                <td>
                  <input
                    placeholder="MM/DD/YYYY"
                    type="date"
                    className="searchBox"
                  ></input>
                  To
                  <input
                    placeholder="MM/DD/YYYY"
                    type="date"
                    className="searchBox"
                  ></input>
                </td>
              </tr>
              <tr>
                <td>
                  <div className="title">
                    <i class="fas fa-street-view mr-4 fa-lg"></i>
                    Location
                  </div>
                </td>
                <td>
                  <AutoComplete elements={parseLocations()} />
                </td>
              </tr>
              <tr>
                <td>
                  <div className="title">
                    <i class="fas fa-calendar-check mr-4 fa-lg"></i>
                    Availability
                  </div>
                </td>
                <td>
                  <input type="text" className="searchBox"></input>
                </td>
              </tr>
            </table>

            <div>
              <div
                style={{
                  width: '7vw',
                  'margin-top': '20px',
                }}
                className="btn-green"
                onClick={search}
              >
                Search
              </div>
            </div>
          </div>
        </div>

        <div
          style={{ width: '62vw', padding: '10px' }}
          className="col2"
        >
          <div
            className="card"
            style={{
              display: 'flex',
              'flex-direction': 'column',
              margin: 0,
              'margin-top': '10px',
              padding: '20px',
              'padding-top': '5px',
            }}
          >
            <WTable
              tableName="Result"
              tableHead={tableHead}
              checkBox={true}
              datas={searchUsersResult}
            ></WTable>
            <div>
              <div
                style={{
                  width: '10vw',
                  'margin-top': '20px',
                }}
                className="btn-green"
                onClick={addPeople}
              >
                Add People
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};
const mapStateToProps = state => {
  return {
    disciplines: state.disciplines,
    skills: state.skills,
    locations: state.locations,
    searchUsersResult: state.search,
  };
};

const mapDispatchToProps = {
  loadDisciplines,
  loadSkills,
  loadLocations,
  searchUsers,
};

export default connect(mapStateToProps, mapDispatchToProps)(Search);
