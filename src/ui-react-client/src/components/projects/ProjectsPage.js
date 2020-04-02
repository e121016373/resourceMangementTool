import React, { Component, useState, useEffect } from 'react';
import WTable from '../personalProfile/my_table';
import {
  loadProjects,
  loadDetails,
  createProject,
  deleteProject,
  editProjectTotal,
  editProjectUser,
  updateProjectStatus,
  forecastProject,
} from '../../redux/actions/projectsActions';
import { addFeedback } from '../../redux/actions/feedbackAction';
import { connect } from 'react-redux';
import Loading from '../loading/loading';
import { CreateProjectModal, SearchModal } from './modal';
import WButton from '../personalProfile/button';
const ProjectsPage = ({
  loadProjects,
  projects,
  loadDetails,
  createProject,
  deleteProject,
  addFeedback,
  updateProjectStatus,
  forecastProject,
}) => {
  useEffect(() => {
    if (!projects.projects) {
      loadProjects().catch(error => {
        alert('Loading projects failed' + error);
      });
    }
  }, [projects.projects]);

  const showDetail = (projectName, fromDate, toDate) => {
    console.log('in showDetail', projectName, fromDate, toDate);
    loadDetails(projectName, fromDate, toDate);
  };
  const [projectName, setProjectName] = useState('');
  const [fromDate, setFromDate] = useState('');
  const [toDate, setToDate] = useState('');
  const [detailTableHead, setDetailTableHead] = useState([]);
  const [year, setYear] = useState(0);
  const changeYear = () => {
    let tempYear = document.getElementById('select-year').value;
    console.log(tempYear);
    setYear(tempYear - firstYear);
  };
  const changeProjectStatus = projectName => {
    let tempProjectStatus = document.getElementById('projectStatus')
      .value;
    // console.log(
    //   'the project name is ',
    //   projectName,
    //   tempProjectStatus,
    // );
    updateProjectStatus(projectName, tempProjectStatus)
      .then(() => {
        addFeedback({
          type: 'success',
          data: 'status changed successfully',
          show: true,
        });
      })
      .catch(error => {
        addFeedback({
          type: 'error',
          data: 'status Location unsuccessfully',
          show: true,
        });
      });
  };
  let firstYear, secondYear;
  const deleteProjectButton = projectName => {
    console.log('delete project name is ', projectName);
    deleteProject(projectName)
      .then(() => {
        console.log('in then');
        addFeedback({
          type: 'success',
          data: 'Delete project successfully',
          show: true,
        });
      })
      .catch(error => {
        addFeedback({
          type: 'error',
          data: 'Delete Location unsuccessfully',
          show: true,
        });
      });
  };
  const renderSecondYear = () => {
    if (secondYear) return <option>{secondYear}</option>;
  };
  const edit = resource => {
    //console.log('the resource is ', resource);
    let datas = document.querySelectorAll(`.${resource}`);
    datas.forEach(data => {
      data.style.border = 'solid';
      data.style.borderWidth = '1px';
      data.style.borderColor = 'black';
      data.disabled = false;
    });
  };
  const submit = resource => {
    console.log('the resource is ', resource);
    let datas = document.querySelectorAll(`.${resource}`);
    let year = document.getElementById('select-year').value;
    let data = { year: parseInt(year) };
    let parsedMonth = [...detailTableHead];
    parsedMonth.pop();
    parsedMonth.pop();
    parsedMonth = parsedMonth.slice(1);
    console.log('in submit', parsedMonth);
    for (let a = 0; a < parsedMonth.length; a++) {
      //console.log(datas[a].placeholder, datas[a].value);
      data[parsedMonth[a]] =
        datas[a].value === ''
          ? parseInt(datas[a].placeholder)
          : parseInt(datas[a].value);
    }
    console.log('the data is', data);
    forecastProject(projectName, resource, data).then(() => {
      // for (let a = 0; a < datas.length; a++) {
      //   //datas.forEach(data => {
      //   datas[a].style.border = 'none';
      //   datas[a].disabled = true;
      //   if (!datas[a].value === '') {
      //     datas[a].placeholder = datas[a].value;
      //     datas[a].value = '';
      //   }
      //   //});
      // }
      showDetail('Ab vero aut atque laborum.', fromDate, toDate);
    });
  };
  const cancel = resource => {
    let datas = document.querySelectorAll(`.${resource[0]}`);
    for (let a = 0; a < datas.length; a++) {
      //datas.forEach(data => {
      datas[a].style.border = 'none';
      datas[a].disabled = true;
      datas[a].value = '';
      datas[a].placeholder = resource[a + 1];
      //});
    }
  };

  const renderDetail = year => {
    if (projects.details) {
      let details = projects.details;
      let detailTable = details.map(detail => {
        let resource = detail.resource;
        let DetailTableHead = details[0].projectName;
        if (
          !(
            fromDate === details[0].fromDate &&
            toDate === details[0].toDate
          )
        ) {
          setFromDate(details[0].fromDate);
          setToDate(details[0].toDate);
        }
        let fromDateYear = fromDate.split('-')[0];
        let toDateYear = toDate.split('-')[0];
        //console.log(fromDateYear, toDateYear, toDate);
        if (fromDateYear === toDateYear) {
          //console.log(fromDateYear, toDateYear);
          firstYear = fromDateYear;
          secondYear = undefined;
        } else {
          //console.log(fromDateYear, toDateYear);

          firstYear = fromDateYear;
          secondYear = toDateYear;
        }

        if (!(projectName === detail.projectName)) {
          //console.log(projectName, detail.projectName);
          setProjectName(detail.projectName);
        }
        let years = detail.year;
        //prase the first year here
        let fromMonth = parseInt(fromDate.split('-')[1]) - 1;
        let firstYearEntries = Object.entries(years[0]);
        let trimedFirstYearEntries = firstYearEntries.slice(
          fromMonth,
        );
        let firstYearObject = Object.fromEntries(
          trimedFirstYearEntries,
        );
        //parse the second year here,buggy
        let toMonth = parseInt(toDate.split('-')[1]) - 1;
        let secondYearEntries = Object.entries(years[0]);
        let trimedSecondYearEntries = secondYearEntries.slice(
          0,
          toMonth + 1,
        );
        let secondYearObject = Object.fromEntries(
          trimedSecondYearEntries,
        );

        //choose year to display
        if (!(projectName === detail.projectName)) {
          let tempHead = Object.keys(firstYearObject);
          tempHead = ['Resource'].concat(tempHead);
          tempHead.push('Edit');
          tempHead.push('Submit');
          setDetailTableHead(tempHead);
        }

        let data = [];
        firstYearObject = Object.values(firstYearObject);
        firstYearObject = [resource].concat(firstYearObject);
        secondYearObject = Object.values(secondYearObject);
        secondYearObject = [resource].concat(secondYearObject);
        data.push(firstYearObject);
        data.push(secondYearObject);
        return data;
      });
      console.log(detailTableHead);
      console.log('detailTable', detailTable);
      detailTable = detailTable.map(item => {
        return item[year];
      });
      return (
        <div
          className="card"
          style={{
            display: 'flex',
            flexDirection: 'column',
            padding: '5px',
            width: '98vw',
            marginTop: '5px',
            marginLeft: '10px',
            margin: '5px',
            //height: '45vh',
            borderColor: 'grey',
          }}
        >
          {/* project table */}
          <div style={{ margin: '0' }} className="table">
            <div
              style={{
                borderBottom: '2px solid #ccc',
                margin: '0',
              }}
              //className="row"
            >
              <div
                style={{
                  //width: '7vw',
                  padding: 5,
                  float: 'right',
                  marginRight: '10px',
                }}
                className="btn-infoGreen"
                onClick={showSearchModal}
              >
                Add User
              </div>
              <div style={{ float: 'right' }} className="select-box">
                <select
                  id="select-year"
                  onChange={changeYear}
                  style={{
                    //appearance: 'none',
                    //'-webkit-appearance': 'none',
                    //width: '100px',
                    //lineHeight: '22px',
                    border: '2px',
                    borderStyle: 'solid',
                    borderColor: 'grey',
                    height: '33px',
                    marginTop: '3px',
                    marginRight: '20px',
                  }}
                >
                  <option>{firstYear}</option>
                  {renderSecondYear()}
                </select>
              </div>
              <div
                style={{
                  margin: '0',
                }}
                className="header"
              >
                <h3>{projectName}</h3>
              </div>
            </div>
            <table
              style={{
                width: '100%',
              }}
            >
              <tr>
                {detailTableHead.map((name, index) => {
                  return (
                    <th key={index} scope="col">
                      <div>{name}</div>
                    </th>
                  );
                })}
              </tr>
              <tbody
                style={{
                  borderStyle: 'solid',
                  borderWidth: '1px',
                  maxHeight: '27vh',
                }}
              >
                {detailTable.map((data, index) => {
                  return (
                    <>
                      <tr key={index}>
                        {Object.values(data).map((item, index) => {
                          if (typeof item === 'string') {
                            return <td key={index}>{item}</td>;
                          }
                          return (
                            <td key={index}>
                              <input
                                className={Object.values(data)[0]}
                                style={{
                                  border: 'none',
                                  width: '45px',
                                  color: '#32A8FF',
                                }}
                                //id="location"
                                placeholder={item}
                                disabled={true}
                              ></input>
                            </td>
                          );
                        })}
                        <td>
                          <WButton
                            buttonNameOne={'Edit'}
                            buttonNameTwo={'Cancel'}
                            id={Object.values(data)[0]}
                            onClickButtonOne={() =>
                              edit(Object.values(data)[0])
                            }
                            onClickButtonTwo={() =>
                              cancel(Object.values(data))
                            }
                          />
                        </td>
                        <td>
                          <div
                            style={{
                              //width: '7vw',
                              padding: 5,
                            }}
                            className="btn-blue"
                            onClick={() =>
                              submit(Object.values(data)[0])
                            }
                          >
                            Submit
                          </div>
                        </td>
                      </tr>
                    </>
                  );
                })}
              </tbody>
            </table>
          </div>
          {/* the end of table one */}
        </div>
      );
    }
  };

  const createProjectButton = () => {
    let modal = document.getElementById('createProjectModal');
    modal.style.display = 'block';
  };

  const showSearchModal = () => {
    let modal = document.getElementById('searchModal');
    modal.style.display = 'block';
  };

  const renderProjectPage = () => {
    if (!projects.projects) {
      return (
        <div>
          <Loading />
        </div>
      );
    }
    if (projects.projects) {
      if (Object.keys(projects.projects).length === 0) {
        return (
          <div>
            <Loading />
          </div>
        );
      }
    }
    let ProjectTableHead = [
      'Name',
      'Location',
      'Start Date',
      'End Date',
      'Update Time',
      'Status',
      'Detail',
      'Delete',
    ];
    return (
      <div>
        {/* <Modal /> */}
        <div
          style={{
            display: 'flex',
            flexDirection: 'row',
            width: '100vw',
            height: '100vh',
            margin: 0,
            position: 'fixed',
            padding: '1px',
          }}
          className="card"
        >
          <div className="col1">
            <div
              className="card"
              style={{
                display: 'flex',
                flexDirection: 'column',
                padding: '5px',
                width: '98vw',
                marginTop: '5px',
                marginLeft: '10px',
                margin: '5px',
                //height: '45vh',
                borderColor: 'grey',
              }}
            >
              {/* project table */}
              <div style={{ margin: '0' }} className="table">
                <div
                  style={{
                    borderBottom: '2px solid #ccc',
                    margin: '0',
                    //width: '100%',
                  }}
                  //className="row"
                >
                  <div
                    style={{
                      //width: '7vw',
                      padding: 5,
                      float: 'right',
                      marginRight: '10px',
                    }}
                    className="btn-infoGreen"
                    onClick={createProjectButton}
                  >
                    Create Project
                  </div>
                  <div
                    style={{
                      margin: '0',
                    }}
                    className="header"
                  >
                    <h3>Projects</h3>
                  </div>
                </div>
                <table
                  style={{
                    width: '100%',
                  }}
                >
                  <tr>
                    {ProjectTableHead.map((name, index) => {
                      return (
                        <th key={index} scope="col">
                          <div>{name}</div>
                        </th>
                      );
                    })}
                  </tr>
                  <tbody
                    style={{
                      borderStyle: 'solid',
                      borderWidth: '1px',
                      maxHeight: '30vh',
                    }}
                  >
                    {projects.projects.map((data, index) => {
                      return (
                        <>
                          <tr key={index}>
                            {Object.values(data).map(
                              (item, index) => {
                                if (
                                  item === 'Inactive' ||
                                  item === 'Active' ||
                                  item === 'Forecast'
                                ) {
                                  switch (item) {
                                    case 'Inactive':
                                      return (
                                        <td>
                                          <select
                                            style={{ height: '30px' }}
                                            id="projectStatus"
                                            onChange={() =>
                                              changeProjectStatus(
                                                Object.values(
                                                  data,
                                                )[0],
                                              )
                                            }
                                          >
                                            <option value="Forecast">
                                              Forecast
                                            </option>
                                            <option
                                              value="Inactive"
                                              selected
                                            >
                                              Inactive
                                            </option>
                                            <option value="Active">
                                              Active
                                            </option>
                                          </select>
                                        </td>
                                      );
                                    case 'Active':
                                      return (
                                        <td>
                                          <select
                                            style={{ height: '30px' }}
                                            id="projectStatus"
                                            onChange={() =>
                                              changeProjectStatus(
                                                Object.values(
                                                  data,
                                                )[0],
                                              )
                                            }
                                          >
                                            <option value="Forecast">
                                              Forecast
                                            </option>
                                            <option value="Inactive">
                                              Inactive
                                            </option>
                                            <option
                                              value="Active"
                                              selected
                                            >
                                              Active
                                            </option>
                                          </select>
                                        </td>
                                      );
                                    case 'Forecast':
                                      return (
                                        <td>
                                          <select
                                            style={{ height: '30px' }}
                                            id="projectStatus"
                                            onChange={() =>
                                              changeProjectStatus(
                                                Object.values(
                                                  data,
                                                )[0],
                                              )
                                            }
                                          >
                                            <option
                                              value="Forecast"
                                              selected
                                            >
                                              Forecast
                                            </option>
                                            <option value="Inactive">
                                              Inactive
                                            </option>
                                            <option value="Active">
                                              Active
                                            </option>
                                          </select>
                                        </td>
                                      );
                                  }
                                }
                                return <td key={index}>{item}</td>;
                              },
                            )}
                            <td>
                              <div
                                style={{
                                  //width: '7vw',
                                  padding: 5,
                                }}
                                className="btn-green"
                                onClick={() =>
                                  showDetail(
                                    data.Name,
                                    data.StartDate,
                                    data.EndDate,
                                  )
                                }
                              >
                                Details
                              </div>
                            </td>
                            <td>
                              <div
                                style={{
                                  //width: '7vw',
                                  padding: 5,
                                }}
                                className="btn-red"
                                onClick={() =>
                                  deleteProjectButton(data.Name)
                                }
                              >
                                Delete
                              </div>
                            </td>
                          </tr>
                        </>
                      );
                    })}
                  </tbody>
                </table>
              </div>
            </div>
            {/* the end of table one */}

            {renderDetail(year)}
          </div>
        </div>
      </div>
    );
  };
  return (
    <div>
      <CreateProjectModal
        createProject={createProject}
        addFeedback={addFeedback}
      />
      <SearchModal
        projectName={projectName}
        fromDate={fromDate}
        toDate={toDate}
      />
      {renderProjectPage()}
    </div>
  );
};

const mapStateToProps = state => ({
  projects: state.projects,
});

const mapDispatchToProps = {
  loadProjects: loadProjects,
  loadDetails: loadDetails,
  createProject: createProject,
  deleteProject: deleteProject,
  addFeedback: addFeedback,
  editProjectTotal: editProjectTotal,
  editProjectUser: editProjectUser,
  updateProjectStatus: updateProjectStatus,
  forecastProject: forecastProject,
};

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(ProjectsPage);
