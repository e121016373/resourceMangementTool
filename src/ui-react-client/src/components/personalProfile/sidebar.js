import React, { Component } from 'react';
import personImage from '../../image/person.png';
import * as msg from './feedbackMsg/feedbackMsg';
import { Modal } from './modal';
export const Sidebar = ({ personalProfileUser }) => {
  const open = () => {
    let modal = document.getElementById('myModal');
    console.log(modal);
    modal.style.display = 'block';
  };
  return (
    <div>
      <div className="sidebar">
        <div>
          <div className="profileImage">
            <div className="personImage">
              <img src={personImage}></img>
            </div>
          </div>
          <div className="profileText">
            <h3>FirstName</h3>
            <h4>{personalProfileUser.firstName}</h4>
            <h3>LastName</h3>
            <h4>{personalProfileUser.lastName}</h4>
            <h3>UserName</h3>
            <h4>{personalProfileUser.username}</h4>
            <h3>Location</h3>
            <h4>{personalProfileUser.locationId}</h4>
          </div>
          <button onClick={open}>Edit</button>
          {/* <Modal /> */}
        </div>
      </div>
    </div>
  );
};

export default Sidebar;
