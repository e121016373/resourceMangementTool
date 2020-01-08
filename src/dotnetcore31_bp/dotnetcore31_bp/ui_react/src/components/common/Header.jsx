import React from 'react';
import { NavLink } from 'react-router-dom';
import UserHeaderMenu from './UserHeaderMenu';

const Header = () => {
  const activeStyle = { color: '#F15B2A' };

  return (
    <>
      <UserHeaderMenu />
      <nav>
        <NavLink to="/" activeStyle={activeStyle} exact>
          Home
        </NavLink>
        {' | '}
        <NavLink to="/users" activeStyle={activeStyle}>
          Users
        </NavLink>
        {' | '}
        <NavLink to="/expenses" activeStyle={activeStyle}>
          Expenses
        </NavLink>
      </nav>
    </>
  );
};

export default Header;
