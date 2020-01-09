import * as types from '../actions/actionTypes';
import initialState from './_initialState';

const executeLoadLocationsSuccessData = action => {
  return action.locations;
};

export const locationsReducer = (
  state = initialState.locations,
  action,
) => {
  switch (action.type) {
    case types.LOAD_LOCATIONS_SUCCESS:
      return executeLoadLocationsSuccessData(action);
    default:
      return state;
  }
};

export default locationsReducer;
