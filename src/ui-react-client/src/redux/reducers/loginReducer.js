import * as types from '../actions/actionTypes';
import initialState from './_initialState';

//return the state of the reducer
// const executeLoadLogin = action => {
//   return action.payload;
// };

//this function takes in two parameter, one is the init state and action
//loginReducer is equal to the state of the reducer
export const loginReducer = (
  state = initialState.loginPayload,
  action,
) => {
  console.log('the state is ', initialState.loginPayload);
  console.log('payload is ', state);
  switch (action.type) {
    case types.LOGING:
      return {
        ...state,
        loginPayload: action.payload,
      };
    default:
      return state;
  }
};

export default loginReducer;
