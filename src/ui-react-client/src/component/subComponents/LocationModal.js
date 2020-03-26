import Modal from 'react-bootstrap/Modal';
import React from "react";
import Button from "react-bootstrap/Button";
import {useState, useEffect} from 'react';
import { useDispatch, useSelector } from 'react-redux';
import "../../css/admin.css";
import {createLocation} from "../../redux/actions/locationsActions";



function LocationModal(props) {
    const [location, setLocation] = useState({
        code: '',
        name: '',
    });

    const [submitted, setSubmitted] = useState(false);
    const dispatch = useDispatch();

    function handleChange(e) {
        const {name, value} = e.target;
        setLocation(location => ({...location, [name]: value}));
    }
    function handleSubmit(e) {
        e.preventDefault();

        setSubmitted(true);
        if(location.code && location.name) {
            dispatch(createLocation(location));
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
                    Create New Skill
                </Modal.Title>
            </Modal.Header>
            <Modal.Body>
                <form name="form" onSubmit={handleSubmit}>
                    <div className={'form-group' + (submitted && !location.name ? ' has-error' : '')}>
                        <label>Location Name</label>
                        <input type="text" name="name" value={location.name} onChange={handleChange} className={'form-control'} />
                        {submitted && !location.name &&
                        <div className="help-block">Location Name is required</div>
                        }
                    </div>
                    <div className={'form-group' + (submitted && location.code ? ' has-error' : '')}>
                        <label>Location Code</label>
                        <input type="text" name="code" value={location.code} onChange={handleChange} className={'form-control'} />
                        {submitted && !location.code &&
                        <div className="help-block">Location Code is required</div>
                        }
                    </div>
                </form>

            </Modal.Body>
            <Modal.Footer><Button variant="secondary" onClick={props.onHide}>
                Close
            </Button>
                <Button variant="primary" onClick={handleSubmit}>
                    Create Location
                </Button>
            </Modal.Footer>
        </Modal>
    );
}

export default LocationModal;