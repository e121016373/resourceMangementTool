import '../../scss/modal.scss';
import React, { useState, useEffect } from 'react';
import { SVC_ROOT } from '../../config/config';
import axios from 'axios';
import { headers } from '../../config/adalConfig';
import { authContext } from '../../config/adalConfig';


export const Modal = () => {
  const user = authContext.getCachedUser().userName.split('@')[0];
  const close = () => {
    let modal = document.getElementById('myModal');
    console.log(modal);
    modal.style.display = 'none';
  };
  const baseURL = `${SVC_ROOT}users/${user}`;
  const submit = () => {
    let firstName = document.getElementById('firstName').value;
    let lastName = document.getElementById('lastName').value;
    let location = document.getElementById('location').value;
    // console.log(firstName, '  ', lastName);
    axios
      .patch(
        baseURL,
        {
          firstName: { firstName },
          lastName: { lastName },
          locationId: { location },
        },
        { headers: headers },
      )
      .then(response => {
        console.log(response);
      })
      .catch(error => {
        throw error;
      });
  };
  return (
    <div id="myModal" className="modal">
      <div>hi</div>
      <div className="modal-content">
        <span className="close" onClick={close}>
          &times;
        </span>
        <div className="content-add">
          <input
            id="firstName"
            style={{ width: 80 }}
            placeholder="FirstName"
          ></input>
          <input
            id="lastName"
            style={{ width: 140 }}
            placeholder="LastName"
          ></input>
          <input
            id="location"
            style={{ width: 140 }}
            placeholder="Location"
          ></input>
          <button onClick={submit}>submit</button>
        </div>
      </div>
    </div>
  );
};
