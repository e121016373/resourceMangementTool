import React, { useState, useEffect } from "react";
import loginImg from "../svg/login.svg";
import "../scss/login.scss";
import { axiosInstance } from "../config/axios";
import { NavLink } from "react-router-dom";
import { useHistory } from "react-router";


const Login = ({ authenticate,
                 setAuthenticate,
               }) => {
  const history = useHistory();

  const [user, setUser] = useState({
    name:'',
    password:'',
  });

  const [submitted, setSubmitted] = useState(false);
  const [eitherWrong, setEitherWrong] = useState(false);


  function handleChange(e) {
    let {name, value} = e.target;
    setUser(user => ({...user, [name]: value}));
  }

  const validate = () => {


    setSubmitted(true);


    if(user.name && user.password) {
      console.log("i should not ");
      setTimeout(function () {
        axiosInstance
            .get(`${user.name}/${user.password}`, {timeout: 30000})
            .then(response => {
              if (response.status === 200) {
                setAuthenticate(true);
                history.push("/admin");
              }
            })
            .catch(error => {
              setEitherWrong(true);
            });
      }, 1000);
    }
  };
  console.log("the history is ", history);


  return (
      <div className="base-container">
        <div className="header">Login</div>
        {submitted && eitherWrong &&
        <div className="help-block">Wrong password or user name. Please try again.</div>
        }
        <div className="content">
          <div className="image">
            <img src={loginImg} />
          </div>
          <div className="form">
            <div className="form-group">
              <label>Username</label>
              <input
                  type="text"
                  name="name"
                  value= {user.name}
                  onChange={handleChange}
              />
              {submitted && !user.name &&
              <div className="help-block">Username is required</div>
              }
            </div>
            <div className="form-group">
              <label>Password</label>
              <input
                  type="password"
                  name="password"
                  value = {user.password}
                  onChange={handleChange}
              />
              {submitted && !user.password &&
              <div className="help-block">password is required</div>
              }
            </div>
          </div>
        </div>
        <div className="footer">
          <NavLink className="item" to="/admin">
            <div className="btn-purple" onClick={validate}>
              Login
            </div>
          </NavLink>
        </div>
      </div>
  );
};
export default Login;
