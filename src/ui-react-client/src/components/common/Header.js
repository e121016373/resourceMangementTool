import React from 'react';
import { NavLink } from 'react-router-dom';
import UserHeaderMenu from './UserHeaderMenu';
import Navbar from 'react-bootstrap/Navbar';
import Nav from 'react-bootstrap/Nav';
import { NavDropdown } from 'react-bootstrap';
import '../../scss/admin.scss';

const Header = () => {
  const activeStyle = { color: '#F15B2A' };

  return (
    <>
      <Navbar collapseOnSelect expand="lg" bg="dark" variant="dark">
        <Navbar.Brand href="#home">Users</Navbar.Brand>
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
            {/* <NavDropdown
              title="Dropdown"
              id="collasible-nav-dropdown"
            >
              <NavDropdown.Item href="#action/3.1">
                Action
              </NavDropdown.Item>
              <NavDropdown.Item href="#action/3.2">
                Another action
              </NavDropdown.Item>
              <NavDropdown.Item href="#action/3.3">
                Something
              </NavDropdown.Item>
              <NavDropdown.Divider />
              <NavDropdown.Item href="#action/3.4">
                Separated link
              </NavDropdown.Item>
            </NavDropdown> */}
          </div>
        </Navbar.Collapse>
        <UserHeaderMenu />
      </Navbar>
    </>
  );
};

export default Header;
