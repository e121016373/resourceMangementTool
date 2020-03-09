import React from 'react';
import { NavLink } from 'react-router-dom';
import UserHeaderMenu from './UserHeaderMenu';
import Navbar from 'react-bootstrap/Navbar';
import '../../scss/admin.scss';
import '../../scss/header.scss';
import AEICON from '../icons/associated-engineering-logo-png-transparent.png';
const Header = () => {
  const activeStyle = { color: '#F15B2A' };

  return (
    <>
      <Navbar collapseOnSelect expand="lg" bg="dark" variant="dark">
        <Navbar.Brand href="#home">
          <img src={AEICON}></img>
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="responsive-navbar-nav" />
        <Navbar.Collapse id="responsive-navbar-nav">
          <div className="barContent">
            <NavLink
              className="item"
              to="/"
              activeStyle={activeStyle}
              exact
            >
              Home
            </NavLink>

            <NavLink
              className="item"
              to="/users"
              activeStyle={activeStyle}
            >
              Users
            </NavLink>
            {' | '}
            <NavLink
              className="item"
              to="/projects"
              activeStyle={activeStyle}
            >
              Projects
            </NavLink>
            {' | '}
            <NavLink
              className="item"
              to="/locations"
              activeStyle={activeStyle}
            >
              Locations
            </NavLink>
            {' | '}
            <NavLink className="item" to="/admin">
              admin
            </NavLink>
            {' | '}
            <NavLink className="item" to="/search">
              search
            </NavLink>
          </div>
        </Navbar.Collapse>
        <UserHeaderMenu />
        <NavLink className="item" to="/personalProfile">
          <i
            style={{ color: 'white', 'margin-left': '12px' }}
            className="far fa-user fa-2x"
          ></i>
        </NavLink>
      </Navbar>
    </>
  );
};

export default Header;
