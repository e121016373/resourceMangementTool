import React, { useEffect } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import UsersList from './UsersList';
import { loadUsers } from '../../redux/actions/usersActions';

const UsersPage = ({ users, loadUsers }) => {
  useEffect(() => {
    if (users.length === 0) {
      loadUsers();
    }
  }, [users, loadUsers]);

  return (
    <>
      <h1>Users</h1>
      <UsersList users={users} />
    </>
  );
};

UsersPage.propTypes = {
  users: PropTypes.array.isRequired,
  loadUsers: PropTypes.func.isRequired,
};

function mapStateToProps(state) {
  return {
    users: state.users,
  };
}

const mapDispatchToProps = {
  loadUsers,
};

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(UsersPage);
