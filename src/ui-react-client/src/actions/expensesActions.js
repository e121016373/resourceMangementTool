import * as types from "../constants/expensesConstants";
import axios from "axios";
import { SVC_ROOT } from "../config/config";

const getExpensesData = data => {
  return {
    type: types.GET_ALL_EXPENSES,
    data: data
  };
};

export const getExpenses = () => {
  return dispatch => {
    axios
      .get(SVC_ROOT + `expenses/all`)
      .then(response => {
        dispatch(getExpensesData(response.data));
      })
      .catch(error => {
        // handle error
      });
  };
};
