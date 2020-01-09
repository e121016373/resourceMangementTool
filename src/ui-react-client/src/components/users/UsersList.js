import React from 'react';
import PropTypes from 'prop-types';

const UsersList = ({ users }) => {
  return (
    <>
      <table>
        <thead>
          <tr>
            <th>Id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
            <th>Location Id</th>
          </tr>
        </thead>
        <tbody>
          {users.map(item => (
            <tr key={item.id}>
              <td>{item.id}</td>
              <td>{item.firstName}</td>
              <td>{item.lastName}</td>
              <td>{item.username}</td>
              <td>{item.locationId}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </>
  );
};

UsersList.propTypes = {
  users: PropTypes.array.isRequired,
};

export default UsersList;
