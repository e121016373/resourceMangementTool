import * as types from '../actions/actionTypes';
import initialState from './_initialState';

function executeLoadLocationsSuccessData(action) {
  return action.locations;
}

export default function locationsReducer(
  state = initialState.locations,
  action,
) {
  switch (action.type) {
    case types.LOAD_LOCATIONS_SUCCESS:
      return executeLoadLocationsSuccessData(action);
    default:
      return state;
  }
}
