import React from 'react'
import { connect } from 'react-redux'
import { getUsers, getAdUser } from '../actions/usersActions'
import { bindActionCreators } from 'redux';

class Users extends React.Component {
    componentDidMount() {
        this.props.getUsers();
        // this.props.getAdUser();
    }
    
    render() {
        const { users } = this.props;

        return (
            <div>
            <h1>Users</h1>
            <table>
                {users.data !== null ? 
                <tbody>
                { users.data.map((user,i) => 
                <tr key={i}>
                    <td>{user.id}</td>
                    <td>{user.firstName}</td>
                    <td>{user.lastName}</td>
                    <td>{user.username}</td>
                </tr>
                )}
                </tbody>
                : null}
            </table>
            </div>
        )
  }
}

const mapStateToProps = (state) => ({
    users: state.users
});

const mapDispatchToProps = (dispatch) => bindActionCreators ({
    getUsers,
    getAdUser
}, dispatch);

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Users);