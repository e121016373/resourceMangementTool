import '../../scss/modal.scss';
import React, { useState, useEffect } from 'react';
import Search from '../search/search';
import { connect, useDispatch } from 'react-redux';
import { loadUsers } from '../../redux/actions/usersActions';
import { loadLocations } from '../../redux/actions/locationsActions';
import AutoComplete from '../autocomplete/autocomplete';

const CreateProjectModal = ({
  loadLocations,
  locations,
  createProject,
  addFeedback,
}) => {
  useEffect(() => {
    if (Object.keys(locations).length === 0) {
      loadLocations().catch(error => {
        alert('Loading disciplines failed' + error);
      });
    }
  }, [locations, loadLocations]);

  const close = () => {
    let modal = document.getElementById('createProjectModal');
    modal.style.display = 'none';
  };

  const [project, setProject] = useState({
    number: '',
    title: '',
    location: '',
    fromDate: '',
    toDate: '',
  });

  const [submitted, setSubmitted] = useState(false);
  const [created, setCreated] = useState(false);
  const [createdWrong, setCreatedWrong] = useState(false);
  const dispatch = useDispatch();

  function handleChange(e) {
    let { name, value } = e.target;
    setProject(skill => ({ ...skill, [name]: value }));
  }

  const handleSubmit = e => {
    e.preventDefault();

    setSubmitted(true);
    if (
      project.number &&
      project.title &&
      project.location &&
      project.fromDate &&
      project.toDate
    ) {
      dispatch(createProject(project))
        .then(() => {
          setCreated(true);
        })
        .catch(error => {
          setCreatedWrong(true);
        });
    }

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
          {submitted && created && (
            <div className="created-block">
              Project is successfully created.
            </div>
          )}
          {submitted && createdWrong && (
            <div className="help-block">
              Project is unsuccessfully created. Check your inputs.
            </div>
          )}
        </div>
        <div className="content-add">
          <form name="form" onSubmit={handleSubmit}>
            <div
              className={
                'input-content' +
                (submitted && !project.number ? ' has-error' : '')
              }
            >
              <label className="input-name">Number</label>
              <input
                placeholder="eg. 2020-VA3D-03"
                type="text"
                name="number"
                value={project.number}
                onChange={handleChange}
              />
              {submitted && !project.number && (
                <div className="help-block">Number is required</div>
              )}
            </div>
            <div
              className={
                'input-content' +
                (submitted && !project.title ? ' has-error' : '')
              }
            >
              <label className="input-name">Project Title</label>
              <input
                type="text"
                name="title"
                value={project.title}
                onChange={handleChange}
              />
              {submitted && !project.title && (
                <div className="help-block">
                  Project Title is required
                </div>
              )}
            </div>
            <div
              className={
                'input-content' +
                (submitted && !project.location ? ' has-error' : '')
              }
            >
              <label className="input-name">Location</label>
              <input
                type="text"
                name="location"
                value={project.location}
                onChange={handleChange}
              />
              {submitted && !project.location && (
                <div className="help-block">Location is required</div>
              )}
            </div>
            <div
              className={
                'input-content' +
                (submitted && !project.fromDate ? ' has-error' : '')
              }
            >
              <label className="input-name">Start Date</label>
              <input
                placeholder="YYYY-MM-DD"
                type="text"
                name="fromDate"
                value={project.fromDate}
                onChange={handleChange}
              />
              {submitted && !project.fromDate && (
                <div className="help-block">
                  Start Date is required
                </div>
              )}
            </div>
            <div
              className={
                'input-content' +
                (submitted && !project.toDate ? ' has-error' : '')
              }
            >
              <label className="input-name">Finish Date</label>
              <input
                placeholder="YYYY-MM-DD"
                type="location"
                name="toDate"
                value={project.toDate}
                onChange={handleChange}
              />
              {submitted && !project.toDate && (
                <div className="help-block">
                  Finish Date is required
                </div>
              )}
            </div>
          </form>
        </div>
        <div>
          <button onClick={handleSubmit}>submit</button>
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

const mapStateToProps = state => {
  return {
    locations: state.locations,
  };
};

const mapDispatchToProps = {
  loadUsers,
  loadLocations,
};

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(CreateProjectModal);
