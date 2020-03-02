import {BootstrapTable, TableHeaderColumn} from "react-bootstrap-table";
import "../../css/admin.css"
import "bootstrap/dist/css/bootstrap.min.css";
import {table} from "react-bootstrap-table";
import Button from 'react-bootstrap/Button';
import { createAUser } from '../../redux/actions/usersActions';
import { connect } from 'react-redux';
import { loadUsers } from '../../redux/actions/usersActions';
import { loadLocations } from '../../redux/actions/locationsActions';



var React = require('react');
var ReactDOM = require('react-dom');
var ReactBsTable  = require('react-bootstrap-table');

// var data = [
//     {"id":"Jungwook Jang", "userName":"jjang14","location":"Vancouver"},
//     {"id":"Winton Weng", "userName":"winwin11", "location":"Burnaby"},
//     {"id":"Eddie Huang","userName":"Eddiee55","location":"Abbotsford"},
//     {"id":"shuaiqi Zhang","userName":"sshun123","location":"Toronto"},
//     {"id":"siddhartha Gupta","userName":"siddsds145","location":"Edmonton"},
//     {"id":"Bob Ghosh","userName":"bbobb55","location":"Calgary"}
// ];

const mapStateToProps = state => {
    return {
      users:
        state.locations.length === 0
          ? []
          : state.users.map(user => {
              return {
                ...user,
                locationName: state.locations.find(
                  element => element.id === user.locationId,
                ).name,
              };
            }),
      locations: state.locations,
    };
  };

const mapDispatchToProps = {
    loadUsers,
    loadLocations,
};
class UserTable extends React.Component {
    
    render() {
        
        return (
            <div>
                <button type="button" className="myBotton" onClick={createAUser}>Add User</button>
                <button type="button" className="myBotton">Remove User</button>
            <BootstrapTable data={ this.props.users } striped hover condensed>
                <TableHeaderColumn width="150" dataField='id' isKey>Id</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='firstName'>First Name</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='lastName'>Last Name</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='username'>User Name</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='locationName'>Location</TableHeaderColumn>
            </BootstrapTable>
            </div>
        );


    }
}
export default connect(
    mapStateToProps,
    mapDispatchToProps,
  )(UserTable);