import { NavLink } from 'react-router-dom';
import UserHeaderMenu from './UserHeaderMenu';
import '../../scss/admin.scss';
import '../../scss/header.scss';
import AEICON from '../icons/associated-engineering-logo-png-transparent.png';
import { authContext } from '../../config/adalConfig';
import React, { useState, useEffect } from 'react';
import PropTypes from 'prop-types';
import { loadPersonalProfile } from '../../redux/actions/personalProfileAction';
import { connect } from 'react-redux';

const Header = ({ personalProfileUser, loadPersonalProfile }) => {
  const activeStyle = { color: '#B39CD0' };

  useEffect(() => {
    if (Object.keys(personalProfileUser).length === 0) {
      loadPersonalProfile().catch(error => {
        alert('Loading personalProfile failed' + error);
      });
      console.log('tyeepeppe', personalProfileUser);
      // userType = personalProfileUser.userProfile.type;
    }
  }, [personalProfileUser]);

  const userType = personalProfileUser.userProfile
    ? personalProfileUser.userProfile.type
    : '';

  const renderProject = () => {
    if (userType === 'Resource Manager') {
      return (
        <li>
          <NavLink
            className="item"
            to="/projects"
            activeStyle={activeStyle}
          >
            <i
              style={{
                display: 'block',
              }}
              class="fas fa-calendar-minus fa-lg"
            ></i>
            Projects
          </NavLink>
        </li>
      );
    }
    return <div></div>;
  };
  console.log('the user type is ', userType);
  return (
    <div>
      <div className="Hnavbar">
        <div>
          <NavLink to="/">
            <img src={AEICON}></img>
          </NavLink>
        </div>
        <div>
          <ul>
            <li style={{ 'margin-left': '0px' }}>
              <NavLink
                className="item"
                to="/"
                activeStyle={activeStyle}
                exact
              >
                <i
                  style={{
                    display: 'block',
                  }}
                  class="fas fa-home fa-lg"
                ></i>
                Home
              </NavLink>
            </li>
            <li>
              <NavLink
                className="item"
                to="/search"
                activeStyle={activeStyle}
              >
                <i
                  style={{
                    display: 'block',
                  }}
                  class="fas fa-search fa-lg"
                ></i>
                Search
              </NavLink>
            </li>
            <li>
              <NavLink
                className="item"
                to="/personalProfile"
                activeStyle={activeStyle}
              >
                <i
                  style={{
                    display: 'block',
                  }}
                  className="far fa-user fa-lg"
                ></i>
                Profile
              </NavLink>
            </li>
            {renderProject()}
          </ul>
        </div>
        <div className="logout" onClick={() => authContext.logOut()}>
          <i
            style={{
              display: 'block',
              color: 'white',
            }}
            className="fas fa-sign-out-alt fa-lg"
          >
            <h6
              style={{ 'font-size': '15px', 'font-weight': 'bold' }}
            >
              Log out
            </h6>
          </i>
        </div>
      </div>
      <div class="space-occupy"></div>
    </div>
  );
};

Header.propTypes = {
  personalProfileUser: PropTypes.object.isRequired,
  loadPersonalProfile: PropTypes.func.isRequired,
};

const mapStateToProps = state => ({
  personalProfileUser: state.currentUserProfile,
});

const mapDispatchToProps = {
  loadPersonalProfile: loadPersonalProfile,
};

export default connect(mapStateToProps, mapDispatchToProps)(Header);
// export default Header;
