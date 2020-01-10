import React, { useEffect } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import {
  createProject,
  loadProjectsMostRecent,
} from '../../redux/actions/projectsActions';
import { loadLocations } from '../../redux/actions/locationsActions.js';
import ProjectList from './ProjectList';

const _ProjectsPage = ({
  projects,
  locations,
  loadProjectsMostRecent,
  loadLocations,
}) => {
  useEffect(() => {
    if (projects.length === 0) {
      loadProjectsMostRecent().catch(error => {
        alert('Loading projects failed' + error);
      });
    }

    if (locations.length === 0) {
      loadLocations().catch(error => {
        alert('Loading locations failed' + error);
      });
    }
  });

  return (
    <>
      <h2>Projects</h2>
      <ProjectList projects={projects} locations={locations} />
    </>
  );
};

_ProjectsPage.propTypes = {
  projects: PropTypes.array.isRequired,
  locations: PropTypes.array.isRequired,
  loadMostRecentProjects: PropTypes.func.isRequired,
  loadLocations: PropTypes.func.isRequired,
};

const mapStateToProps = state => {
  return {
    projects:
      state.locations.length === 0
        ? []
        : state.projects.map(project => {
            return {
              ...project,
              locationName: state.locations.find(
                element => element.id === project.locationId,
              ).name,
            };
          }),
    locations: state.locations,
  };
};

const mapDispatchToProps = {
  createProject,
  loadProjectsMostRecent,
  loadLocations,
};

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(_ProjectsPage);
