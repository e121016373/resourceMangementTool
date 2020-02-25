import {BootstrapTable, TableHeaderColumn} from "react-bootstrap-table";
import "../../css/admin.css"
import "bootstrap/dist/css/bootstrap.min.css";
import {table} from "react-bootstrap-table";
import Button from 'react-bootstrap/Button';


var React = require('react');
var ReactDOM = require('react-dom');
var ReactBsTable  = require('react-bootstrap-table');

var data = [
    {"id":"Jungwook Jang", "userName":"jjang14","location":"Vancouver"},
    {"id":"Winton Weng", "userName":"winwin11", "location":"Burnaby"},
    {"id":"Eddie Huang","userName":"Eddiee55","location":"Abbotsford"},
    {"id":"shuaiqi Zhang","userName":"sshun123","location":"Toronto"},
    {"id":"siddhartha Gupta","userName":"siddsds145","location":"Edmonton"},
    {"id":"Bob Ghosh","userName":"bbobb55","location":"Calgary"}
];


export default class UserTable extends React.Component {

    render() {

        return (
            <div>
                <button type="button" className="myBotton">Add User</button>
                <button type="button" className="myBotton">Remove User</button>
            <BootstrapTable data={ data } striped hover condensed>
                <TableHeaderColumn width="150" dataField='id' isKey>Name of User</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='userName'> User Name</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='location'>Location</TableHeaderColumn>
            </BootstrapTable>
            </div>
        );


    }
}