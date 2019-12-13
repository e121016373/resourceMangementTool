import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { SVC_ROOT } from '../../config/Config';
import { getToken } from '../../config/AdalConfig';

const headers = { Authorization: `Bearer ${getToken()}` };

const Users = () => {
  const [users, setUsers] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [isError, setIsError] = useState('');

  useEffect(() => {
    const fetchData = async () => {
      await axios
        .get(`${SVC_ROOT}users/all`, { headers })
        .then(res => {
          setUsers(res.data);
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
      <h1>Users</h1>
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
          {users.map(item => (
            <tr key={item.id}>
              <td>{item.id}</td>
              <td>{item.firstName}</td>
              <td>{item.lastName}</td>
              <td>{item.username}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Users;
