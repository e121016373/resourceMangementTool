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
          {locations.map(item => (
            <tr key={item.id}>
              <td>{item.id}</td>
              <td>{item.code}</td>
              <td>{item.name}</td>
              <td>{item.restricted.toString()}</td>
              <td>{item.enabled.toString()}</td>
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
