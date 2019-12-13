import React from 'react';
import { Link } from 'react-router-dom';

const Home = () => {
  return (
    <div>
      <h1>Home</h1>
      <Link to="/users">Users</Link>
      <br />
      <Link to="/expenses">Expenses</Link>
    </div>
  );
};
export default Home;
