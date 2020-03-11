import React from 'react';
import { NavLink } from 'react-router-dom';
import UserHeaderMenu from './UserHeaderMenu';
import '../../scss/admin.scss';
import '../../scss/header.scss';
import AEICON from '../icons/associated-engineering-logo-png-transparent.png';
import { authContext } from '../../config/adalConfig';
const Header = () => {
  const activeStyle = { color: '#B39CD0' };

  return (
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
          <h6 style={{ 'font-size': '15px', 'font-weight': 'bold' }}>
            Log out
          </h6>
        </i>
      </div>
    </div>
  );
};

export default Header;
