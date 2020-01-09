import React from 'react';
import PropTypes from 'prop-types';

const ProjectsList = ({ projects }) => {
  return (
    <>
      <table>
        <thead>
          <tr>
            <th>Id</th>
            <th>Number</th>
            <th>Title</th>
            <th>LocationId</th>
            <th>CreatedAt</th>
            <th>UpdatedAt</th>
          </tr>
        </thead>
        <tbody>
          {projects.map(item => (
            <tr key={item.id}>
              <td>{item.id}</td>
              <td>{item.number}</td>
              <td>{item.title}</td>
              <td>{item.locationId}</td>
              <td>{item.createdAt}</td>
              <td>{item.updatedAt}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </>
  );
};

ProjectsList.propTypes = {
  projects: PropTypes.array.isRequired,
};

export default ProjectsList;
