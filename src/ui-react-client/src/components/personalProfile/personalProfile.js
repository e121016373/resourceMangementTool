import 'bootstrap/dist/css/bootstrap.min.css';
import ProfileMain from './profileMain';
import Sidebar from './sidebar';
import { loadPersonalProfile } from '../../redux/actions/personalProfileAction';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import React, { useState, useEffect } from 'react';
import { deleteDiscipline } from '../../redux/actions/personalProfileAction';
import { deleteSkill } from '../../redux/actions/personalProfileAction';
import { addDiscipline } from '../../redux/actions/personalProfileAction';
import { addSkill } from '../../redux/actions/personalProfileAction';

const PersonalProfile = ({
  personalProfileUser,
  loadPersonalProfile,
  deleteDiscipline,
  deleteSkill,
  addDiscipline,
  addSkill,
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
          disciplines={personalProfileUser.disciplines}
          skills={personalProfileUser.skills}
          deleteDiscipline={deleteDiscipline}
          deleteSkill={deleteSkill}
          addDiscipline={addDiscipline}
          addSkill={addSkill}
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
  deleteDiscipline: deleteDiscipline,
  deleteSkill: deleteSkill,
  addDiscipline: addDiscipline,
  addSkill: addSkill,
};

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(PersonalProfile);
