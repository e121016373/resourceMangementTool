import React from 'react';
import '../../scss/home.scss';
import Button from 'react-bootstrap/Button';
import 'bootstrap/dist/css/bootstrap.min.css';

const LandingPage = () => {
  return (
    <div className="main">
      <Button
        size="lg"
        variant="outline-secondary"
        className="my-button"
        href="/users"
      >
        users
      </Button>
      <Button
        size="lg"
        variant="outline-secondary"
        className="my-button"
        href="/admin/login"
      >
        admin
      </Button>
    </div>
  );
};
export default LandingPage;
