import '../../scss/modal.scss';
import React, { useState, useEffect } from 'react';
import { SVC_ROOT } from '../../config/config';
import axios from 'axios';
import { headers } from '../../config/adalConfig';
import { authContext } from '../../config/adalConfig';
import Search from '../search/search';
export const CreateProjectModal = ({
  createProject,
  addFeedback,
}) => {
  const close = () => {
    let modal = document.getElementById('createProjectModal');
    modal.style.display = 'none';
  };
  const submit = () => {
    let number = document.getElementById('Number').value;
    let title = document.getElementById('Title').value;
    let location = document.getElementById('Location').value;
    let fromDate = document.getElementById('FromDate').value;
    let toDate = document.getElementById('ToDate').value;
    createProject({
      number: number,
      title: title,
      location: location,
      fromDate: fromDate,
      toDate: toDate,
    })
      .then(() => {
        console.log('in then');
        addFeedback({
          type: 'success',
          data: 'Create project successfully',
          show: true,
        });
      })
      .catch(error => {
        addFeedback({
          type: 'error',
          data: 'Create project unsuccessfully',
          show: true,
        });
      });

    // console.log(firstName, '  ', lastName);
  };
  return (
    <div id="createProjectModal" className="modal">
      <div className="modal-content">
        <div className="header">
          <span className="close" onClick={close}>
            &times;
          </span>
          <h5>Create Project</h5>
        </div>
        <div className="content-add">
          <div className="input-content">
            <div>
              <div className="input-name">Number</div>
            </div>
            <input
              id="Number"
              //style={{ width: 80 }}
            ></input>
          </div>
          <div className="input-content">
            <div>
              <div className="input-name">Title</div>
            </div>
            <input
              id="Title"
              //style={{ width: 80 }}
            ></input>
          </div>
          <div className="input-content">
            <div>
              <div className="input-name">Location</div>
            </div>
            <input
              id="Location"
              //style={{ width: 80 }}
            ></input>
          </div>
          <div className="input-content">
            <div>
              <div className="input-name">FromDate</div>
            </div>
            <input
              id="FromDate"
              //style={{ width: 80 }}
            ></input>
          </div>
          <div className="input-content">
            <div>
              <div className="input-name">ToDate</div>
            </div>
            <input
              id="ToDate"
              //style={{ width: 80 }}
            ></input>
          </div>
        </div>
        <div>
          <button onClick={submit}>submit</button>
        </div>
      </div>
    </div>
  );
};
export const SearchModal = ({ projectName, fromDate, toDate }) => {
  const close = () => {
    let modal = document.getElementById('searchModal');
    modal.style.display = 'none';
  };
  return (
    <div
      style={{
        //padding: '20px',
        paddingLeft: '40px',
        paddingBottom: '40px',
        paddingRight: '40px',
        paddingTop: '40px',
      }}
      id="searchModal"
      className="modal"
    >
      <div style={{ width: '100%' }} className="modal-content">
        <div className="header">
          <span className="close" onClick={close}>
            &times;
          </span>
          <h5>Search User</h5>
        </div>
        <div>
          <div
            style={{
              width: '100%',
              overflow: 'hidden',
              height: '80vh',
              textAlign: 'center',
            }}
          >
            <Search
              projectName={projectName}
              fromDate={fromDate}
              toDate={toDate}
            />
          </div>
        </div>
      </div>
    </div>
  );
};
