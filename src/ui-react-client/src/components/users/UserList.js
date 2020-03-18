import React from 'react';
import PropTypes from 'prop-types';
import Table from 'react-bootstrap/Table';
const UserList = ({ users }) => {
  return (
    <>
      <Table striped bordered hover variant="dark">
        <thead>
          <tr>
            <th>Id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
            <th>Location</th>
          </tr>
        </thead>
        <tbody>
          {users.map(user => (
            <tr key={user.id}>
              <td>{user.id}</td>
              <td>{user.firstName}</td>
              <td>{user.lastName}</td>
              <td>{user.username}</td>
              <td>{user.locationName}</td>
            </tr>
          ))}
        </tbody>
      </Table>
    </>
  );
};

UserList.propTypes = {
  users: PropTypes.array.isRequired,
};

export default UserList;
