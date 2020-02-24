import {BootstrapTable, TableHeaderColumn} from "react-bootstrap-table";
import "../../css/admin.css"
import "bootstrap/dist/css/bootstrap.min.css";
import {table} from "react-bootstrap-table";
const $ = window.$;

var React = require('react');
var ReactDOM = require('react-dom');
var ReactBsTable  = require('react-bootstrap-table');

function createData(name,number) {
    return{"id":name,"code":number};
}

const rows = [
    createData("Sql server",355),
    createData("C++", 348),
    createData("azure AD", 247),
    createData("docker",144),
    createData("Java",108),
    createData("JavaScript",104),
    createData("Rubys on Rails",100),
    createData("Google Dev Tool", 97),
    createData("C#",88),
    createData("APS.NET CORE",76),
    createData("RESTful API", 65),
    createData("React", 50),
    createData("Bootstrap", 20)

];



export default class LocationTable extends React.Component {

    render() {

        return (
            <div>
                <button type="button" className="myBotton">Add Skill</button>
                <button type="button" className="myBotton">Remove Skill</button>
            <BootstrapTable data={ rows } striped hover condensed>
                <TableHeaderColumn width="150" dataField='id' isKey>Skill Name</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='code'>  Number of People</TableHeaderColumn>
            </BootstrapTable>
            </div>


        );


    }
}