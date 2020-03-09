import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import ProfileMain from './profileMain';
import Sidebar from './sidebar';
import { loadPersonalProfile } from '../../redux/actions/personalProfileAction';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';

class PersonalProfile extends React.Component {
  constructor(props) {
    super(props);
  }
  componentDidMount() {
    // console.log('the props is ', this.props);
    this.props.loadPersonalProfile();
    // console.log('the persona file ', this.props.personalProfileUser);
  }
  render() {
    console.log(this.props.personalProfileUser);
    return (
      <div>
        <Sidebar
          personalProfileUser={this.props.personalProfileUser}
        />
        <ProfileMain />
      </div>
    );
  }
}

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
