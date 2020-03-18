import 'bootstrap/dist/css/bootstrap.min.css';
import ProfileMain from './profileMain';
import Sidebar from './sidebar';
import { loadPersonalProfile } from '../../redux/actions/personalProfileAction';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import React, { useState, useEffect } from 'react';

const PersonalProfile = ({
  personalProfileUser,
  loadPersonalProfile,
}) => {
  useEffect(() => {
    if (Object.keys(personalProfileUser).length === 0) {
      loadPersonalProfile().catch(error => {
        alert('Loading personalProfile failed' + error);
      });
    }
  }, [personalProfileUser]);

  const renderPersonalProfile = () => {
    if (Object.keys(personalProfileUser).length === 0) {
      return <div>loading</div>;
    }
    // console.log('sss', personalProfileUser);
    return (
      <div>
        <Sidebar
          personalProfileUser={personalProfileUser.userProfile}
        />
        <ProfileMain
          personalProfileUser={personalProfileUser.userProfile}
          disSkill={personalProfileUser.disSkill}
        />
      </div>
    );
  };

  return <div>{renderPersonalProfile()}</div>;
};

PersonalProfile.propTypes = {
  personalProfileUser: PropTypes.object.isRequired,
  loadPersonalProfile: PropTypes.func.isRequired,
};

const mapStateToProps = state => ({
  personalProfileUser: state.currentUserProfile,
});

const mapDispatchToProps = {
  loadPersonalProfile: loadPersonalProfile,
};

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(PersonalProfile);
