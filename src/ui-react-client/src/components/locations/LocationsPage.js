import React, { useEffect } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import LocationsList from './LocationsList';
import { loadLocations } from '../../redux/actions/locationsActions';

const LocationsPage = ({ locations, loadLocations }) => {
  useEffect(() => {
    if (locations.length === 0) {
      loadLocations();
    }
  }, [locations, loadLocations]);

  return (
    <>
      <h1>Locations</h1>
      <LocationsList locations={locations} />
    </>
  );
};

LocationsPage.propTypes = {
  locations: PropTypes.array.isRequired,
  loadLocations: PropTypes.func.isRequired,
};

const mapStateToProps = state => {
  return {
    locations: state.locations,
  };
};

const mapDispatchToProps = {
  loadLocations,
};

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(LocationsPage);
