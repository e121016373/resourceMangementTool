import React, { Component, useState } from 'react';
import personImage from '../../image/person.png';
import { Modal } from './modal';
import { editLocation } from '../../redux/actions/personalProfileAction';
import { connect } from 'react-redux';
import ShowFeedbackMsg from '../feedbackMsg/feedbackMsg';
import { addFeedback } from '../../redux/actions/feedbackAction';
export const Sidebar = ({
  personalProfileUser,
  editLocation,
  addFeedback,
  setCurrentState,
  currentState,
}) => {
  const edit = () => {
    let location = document.getElementById('location');
    location.disabled = false;
    location.focus();
    let content = document.getElementById('content');
    content.style.transform = 'translateY(-24px)';
  };
  const submit = () => {
    let location = document.getElementById('location');
    let content = document.getElementById('content');

    personalProfileUser.location = location.value;
    editLocation(personalProfileUser)
      .then(() => {
        location.disabled = true;
        content.style.transform = 'translateY(0px)';
        addFeedback({
          type: 'success',
          data: 'Edit Location successfully',
          show: true,
        });
      })
      .catch(error => {
        addFeedback({
          type: 'error',
          data: 'Edit Location unsuccessfully',
          show: true,
        });
      });
    // console.log('the status is ', status);
    // if (status === '202') {
    //   content.style.transform = 'translateY(0px)';
    // }
  };
  let originalBarPosition;
  const moveBar = e => {
    // let offsets = e.getBoundingClientRect();
    // let top = offsets.top;
    // let left = offsets.left;
    let bar = document.getElementById('bar');
    if (originalBarPosition === undefined) {
      originalBarPosition = document
        .getElementById('bar')
        .getBoundingClientRect().x;
    }
    let difference =
      e.target.getBoundingClientRect().x - originalBarPosition - 4;
    console.log('the difference is ', bar.style.transform);
    bar.style.transform = 'translate(' + difference + 'px)';
    bar.style.width =
      e.target.getBoundingClientRect().width + 8 + 'px';
    console.log('the width  ', bar.style.width);
  };
  console.log('sidebar currentState', currentState);
  return (
    <div>
      <div className="sidebar">
        <div>
          <div className="profileImage">
            <div className="personImage">
              <img src={personImage}></img>
            </div>
            <div className="profileText">
              {/* <h4>Welcome</h4> */}
              <h6 style={{ color: 'grey', 'margin-bottom': '0px' }}>
                {personalProfileUser.username}
              </h6>
              <div className="location">
                <h6 style={{ color: 'grey', 'margin-bottom': '0px' }}>
                  location:
                </h6>
                <div>
                  <h6 style={{ color: 'grey', margin: '0px' }}>
                    <input
                      id="location"
                      placeholder={personalProfileUser.location}
                      disabled="true"
                    ></input>
                  </h6>
                </div>
              </div>
              <div>
                <div className="button">
                  <div id="content" className="content">
                    <div className="btn-red" onClick={edit}>
                      Edit
                    </div>
                    <div className="btn-green" onClick={submit}>
                      Submit
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          {/* <Modal /> */}
        </div>
        <div style={{ 'margin-top': '20px' }}></div>
        <div className="content">
          <div
            className="item"
            onClick={() => setCurrentState('discipline')}
          >
            <i class="fas fa-user-graduate mr-4 fa-lg"></i>
            disciplines
          </div>
          <div
            className="item"
            onClick={() => setCurrentState('project')}
          >
            <i class="fas fa-calendar-minus mr-4 fa-lg"></i>Project
          </div>
          <div
            className="item"
            onClick={() => setCurrentState('availability')}
          >
            <i class="far fa-clock mr-4 fa-lg"></i>Utilization
          </div>
        </div>
      </div>
    </div>
  );
};

const mapDispatchToProps = {
  editLocation: editLocation,
  addFeedback: addFeedback,
};

export default connect(null, mapDispatchToProps)(Sidebar);
//export default Sidebar;
