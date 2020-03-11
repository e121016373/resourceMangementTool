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
            {/* <h4>Welcome</h4> */}
            <h5 style={{ color: 'grey' }}>
              {personalProfileUser.username}
            </h5>
            <h5 style={{ color: 'grey' }}>
              {personalProfileUser.location}
            </h5>
          </div>
          <div className="btn-red" onClick={open}>
            Edit
          </div>
          {/* <Modal /> */}
        </div>
      </div>
    </div>
  );
};

export default Sidebar;
