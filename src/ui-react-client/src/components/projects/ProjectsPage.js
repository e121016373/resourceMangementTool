import React, { useEffect } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import ProjectsList from './ProjectsList';
import { loadMostRecentProjects } from '../../redux/actions/projectsActions';

const ProjectsPage = ({ projects, loadMostRecentProjects }) => {
  useEffect(() => {
    if (projects.length === 0) {
      loadMostRecentProjects();
    }
  }, [projects, loadMostRecentProjects]);

  return (
    <>
      <h1>Projects</h1>
      <ProjectsList projects={projects} />
    </>
  );
};

ProjectsPage.propTypes = {
  projects: PropTypes.array.isRequired,
  loadMostRecentProjects: PropTypes.func.isRequired,
};

function mapStateToProps(state) {
  return {
    projects: state.projects,
  };
}

const mapDispatchToProps = {
  loadMostRecentProjects,
};

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(ProjectsPage);
