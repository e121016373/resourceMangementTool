import React from 'react';
import { authContext } from '../../config/AdalConfig';

const UserHeaderMenu = () => {
  return (
    <nav>
      <button
        type="submit"
        className="logout-button"
        onClick={() => authContext.logOut()}
      >
        Log Out
      </button>
    </nav>
  );
};

export default UserHeaderMenu;
