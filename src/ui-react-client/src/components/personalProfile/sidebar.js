import React, { Component, useState } from 'react';
import personImage from '../../image/person.png';
import { Modal } from './modal';
import { editLocation } from '../../redux/actions/personalProfileAction';
import { connect } from 'react-redux';
import * as msg from './feedbackMsg/feedbackMsg';
export const Sidebar = ({ personalProfileUser, editLocation }) => {
  const [msgContent, SetmsgContent] = useState([]);
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
        SetmsgContent({
          type: 'success',
          data: 'EditLocation successfully',
          show: true,
        });
        console.log(msgContent);
      })
      .catch(error => {});
    // console.log('the status is ', status);
    // if (status === '202') {
    //   content.style.transform = 'translateY(0px)';
    // }
  };
  return (
    <div>
      <msg.ShowFeedbackMsg msg={msgContent} />
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
      </div>
    </div>
  );
};

const mapDispatchToProps = {
  editLocation: editLocation,
};

export default connect(null, mapDispatchToProps)(Sidebar);
//export default Sidebar;
