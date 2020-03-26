import Modal from 'react-bootstrap/Modal';
import React from "react";
import Button from "react-bootstrap/Button";
import {createAUser} from "../../redux/actions/usersActions";
import {useState, useEffect} from 'react';
import { useDispatch, useSelector } from 'react-redux';
import "../../css/admin.css";



function UserModal(props) {
    const [user, setUser] = useState({
        id: 1,
        firstName: '',
        lastName: '',
        username: '',
        location: '',
        type: '',
    });

    const [submitted, setSubmitted] = useState(false);
    const dispatch = useDispatch();

    function handleChange(e) {
        const {name, value} = e.target;
        setUser(user => ({...user, [name]: value}));
    }
    function handleSubmit(e) {
        e.preventDefault();

        setSubmitted(true);
        if(user.firstName && user.lastName && user.location && user.type && user.username) {
            dispatch(createAUser(user));
        }
    }
    return (
        <Modal
            {...props}
            size="lg"
            aria-labelledby="contained-modal-title-vcenter"
            centered
        >
            <Modal.Header closeButton>
                <Modal.Title id="contained-modal-title-vcenter">
                    Create New User
                </Modal.Title>
            </Modal.Header>
            <Modal.Body>
                <form name="form" onSubmit={handleSubmit}>
                    <div className={'form-group' + (submitted && !user.firstName ? ' has-error' : '')}>
                        <label>First Name</label>
                        <input type="text" name="firstName" value={user.firstName} onChange={handleChange} className={'form-control'} />
                        {submitted && !user.firstName &&
                        <div className="help-block">First Name is required</div>
                        }
                    </div>
                    <div className={'form-group' + (submitted && !user.lastName ? ' has-error' : '')}>
                        <label>Last Name</label>
                        <input type="text" name="lastName" value={user.lastName} onChange={handleChange} className={'form-control'} />
                        {submitted && !user.lastName &&
                        <div className="help-block">Last Name is required</div>
                        }
                    </div>
                    <div className={'form-group' + (submitted && !user.username ? ' has-error' : '')}>
                        <label>Username</label>
                        <input type="text" name="username" value={user.username} onChange={handleChange} className={'form-control' } />
                        {submitted && !user.username &&
                        <div className="help-block">Username is required</div>
                        }
                    </div>
                    <div className={'form-group' + (submitted && !user.location ? ' has-error' : '')}>
                        <label>Location</label>
                        <input type="location" name="location" value={user.location} onChange={handleChange} className={'form-control'} />
                        {submitted && !user.location &&
                        <div className="help-block">location is required</div>
                        }
                    </div>
                    <div className={'form-group' + (submitted && !user.type ? ' has-error' : '')}>
                        <label htmlFor="inputState">Type of User</label>
                        <select type = "type" name= "type" value ={user.type} onChange={handleChange} className={"form-control"}>
                            <option selected>Choose...</option>
                            <option>Individual Contributor</option>
                            <option>Resource Manager</option>
                            <option>Project Manager</option>
                        </select>
                        {submitted && !user.type &&
                        <div className = "help-block">User type is required</div>
                        }
                    </div>
                </form>
            </Modal.Body>
            <Modal.Footer><Button variant="secondary" onClick={props.onHide}>
                Close
            </Button>
                <Button variant="primary" onClick = {handleSubmit}>
                    Create User
                </Button>
            </Modal.Footer>
        </Modal>
    );
}

export default UserModal;