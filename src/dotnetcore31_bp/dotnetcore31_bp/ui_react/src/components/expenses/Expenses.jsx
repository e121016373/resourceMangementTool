import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { SVC_ROOT } from '../../config/Config';

const Expenses = () => {
  const [expenses, setExpenses] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [isError, setIsError] = useState('');

  useEffect(() => {
    const fetchData = async () => {
      await axios
        .get(`${SVC_ROOT}expenses/all`)
        .then(res => {
          setExpenses(res.data);
          setIsLoading(false);
          setIsError(false);
        })
        .catch(err => {
          setIsError(err.message);
          setIsLoading(false);
          setIsError(true);
        });
    };
    fetchData();
  }, []);

  return (
    <div>
      <h1>Expenses</h1>
      {isError && <div>Something went wrong ... </div>}
      <table>
        {isLoading && (
          <thead>
            <tr>
              <td> Loading ... </td>
            </tr>
          </thead>
        )}
        <tbody>
          {expenses.map(item => (
            <tr key={item.id}>
              <td>{item.id}</td>
              <td>{item.date}</td>
              <td>{item.description}</td>
              <td>{item.value}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Expenses;
