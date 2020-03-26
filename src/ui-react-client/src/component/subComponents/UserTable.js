import {BootstrapTable, TableHeaderColumn} from "react-bootstrap-table";
import "../../css/admin.css"
import "bootstrap/dist/css/bootstrap.min.css";
import { createAUser } from '../../redux/actions/usersActions';
import {connect, useDispatch} from 'react-redux';
import { loadUsers } from '../../redux/actions/usersActions';
import { loadLocations } from '../../redux/actions/locationsActions';
import React, {useEffect, useState} from 'react';
import Button from 'react-bootstrap/Button';
import ButtonToolbar from 'react-bootstrap/ButtonToolbar';
import UserModal from "./UserModal";
import {deleteAUser} from "../../redux/actions/usersActions";


const UserTable = ({
                       users,
                       locations,
                       loadUsers,
                       loadLocations,
                   }) => {
    useEffect(() => {
        if (users.length === 0) {
            loadUsers().catch(error => {
                alert('Loading users failed' + error);
            });
        }

        if (locations.length === 0) {
            loadLocations().catch(error => {
                alert('Loading locations failed' + error);
            });
        }
    }, [users, locations, loadUsers, loadLocations]);

    const [modalShow, setModalShow] = useState(false);
    const [userToBeDel, setUserName] = useState ({
        username:'',
    });
    const dispatch = useDispatch();


    function onRowSelect(row, isSelected, e) {

        const val = row.username;
        setUserName(prevState => {
            return {...prevState, username:val}
        });

    }

    function onSelectAll(isSelected, rows) {
        if (isSelected) {
            alert('The selection only work on key which less than 3');
            return users.map(p => p.id).filter(id => id < 3);
        }
    }

    function handleDelete(e) {
        e.preventDefault();

        if(userToBeDel.username) {
            dispatch(deleteAUser(userToBeDel));
        }
    }

    const selectRowProp = {
        mode: 'checkbox',
        clickToSelect: true,
        onSelect: onRowSelect,
        onSelectAll: onSelectAll
    };



    return (
        <div>
            <ButtonToolbar>
                <Button variant="primary" onClick={() => setModalShow(true)}>
                    Add User
                </Button>
                <div className="divider"/>
                <Button variant="danger" onClick={handleDelete}>Remove User</Button>

                <UserModal
                    show={modalShow}
                    onHide={() => setModalShow(false)}
                />
            </ButtonToolbar>
            <BootstrapTable data={ users } search ={true} pagination = {true} selectRow={ selectRowProp} striped hover condensed>
                <TableHeaderColumn width="150" dataField='id' isKey>Id</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='firstName'>First Name</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='lastName'>Last Name</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='username'>User Name</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='location'>Location</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='type'>Type</TableHeaderColumn>
            </BootstrapTable>
        </div>
    );
};

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
                        ),
                    };
                }),
        locations: state.locations,
    };
};

const mapDispatchToProps = {
    loadUsers,
    loadLocations,
    createAUser,
};

export default connect(
    mapStateToProps,
    mapDispatchToProps,
)(UserTable);



