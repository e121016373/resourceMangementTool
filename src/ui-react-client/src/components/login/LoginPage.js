import React, { useEffect, Component } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import { Login } from './login';
import { login } from '../../redux/actions/loginAction';
import { Button } from 'react-bootstrap';
import loginImg from '../svg/login.svg';
import '../../scss/login.scss';
import 'bootstrap/dist/css/bootstrap.min.css';
import { NavLink } from 'react-router-dom';

class LoginPage extends Component {
  //   useEffect(() => {
  //     if (locations.length === 0) {
  //       loadLocations().catch(error => {
  //         alert('Loading locations failed' + error);
  //       });
  //     }
  //   }, [locations, loadLocations]);
  constructor(props) {
    super(props);
  }
  componentDidMount() {
    this.props.login();
    console.log('loginpage', this.props.loginPayload);
  }

  authentication = () => {
    let username = document.getElementById('username').value;
    let password = document.getElementById('password').value;
    let loginPayload = this.props.loginPayload.loginPayload;
    console.log(loginPayload.username);
    if (
      username == loginPayload.username &&
      password == loginPayload.password
    ) {
      return true;
    } else {
      return false;
    }
  };
  render() {
    return (
      <div>
        <div className="base-container" ref={this.props.containerRef}>
          <div className="header">Login</div>
          <div className="content">
            <div className="image">
              <img src={loginImg} />
            </div>
            <div className="form">
              <div className="form-group">
                <label htmlFor="username">Username</label>
                <input
                  id="username"
                  type="text"
                  name="username"
                  placeholder="enter your username"
                />
              </div>
              <div className="form-group">
                <label htmlFor="password">Password</label>
                <input
                  id="password"
                  type="password"
                  name="password"
                  placeholder="entern your password"
                />
              </div>
            </div>
          </div>
          <div className="footer">
            <Button
              onClick={this.authentication}
              variant="outline-dark"
            >
              Login
            </Button>
          </div>
          <a href="/adminpage">Projects</a>
        </div>
      </div>
    );
  }
}

LoginPage.propTypes = {
  loginPayload: PropTypes.object.isRequired,
  login: PropTypes.func.isRequired,
};

const mapStateToProps = state => ({
  loginPayload: state.loginPayload,
});

const mapDispatchToProps = {
  login,
};

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(LoginPage);
