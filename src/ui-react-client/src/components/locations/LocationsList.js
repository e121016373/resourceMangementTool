import React from 'react';
import PropTypes from 'prop-types';

const LocationsList = ({ locations }) => {
  return (
    <>
      <table>
        <thead>
          <tr>
            <th>Id</th>
            <th>Code</th>
            <th>Name</th>
            <th>Restricted</th>
            <th>Enabled</th>
          </tr>
        </thead>
        <tbody>
          {locations.map(location => (
            <tr key={location.id}>
              <td>{location.id}</td>
              <td>{location.code}</td>
              <td>{location.name}</td>
              <td>{location.restricted.toString()}</td>
              <td>{location.enabled.toString()}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </>
  );
};

LocationsList.propTypes = {
  locations: PropTypes.array.isRequired,
};

export default LocationsList;
