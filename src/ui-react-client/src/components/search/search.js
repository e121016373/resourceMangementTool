import React, { useEffect } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import AutoComplete from './autocomplete';
const Search = () => {
  return (
    <div className="container">
      <div className="searchCard">
        <div
          style={{ 'border-bottom': '2px solid #ccc', margin: '0' }}
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
              <AutoComplete />
            </td>
          </tr>
          <tr>
            <td>
              <div className="title">
                <i class="fas fa-user-clock mr-3 fa-lg"></i>
                Year of experience
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
              <AutoComplete />
            </td>
          </tr>
          <tr>
            <td>
              <div className="title">
                <i class="fas fa-calendar-day mr-4 fa-lg"></i>
                Data range
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
              <AutoComplete />
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
      </div>
    </div>
  );
};
const mapStateToProps = state => {};

const mapDispatchToProps = {};

export default connect(mapStateToProps, mapDispatchToProps)(Search);
