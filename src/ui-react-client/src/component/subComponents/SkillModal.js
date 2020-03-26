import Modal from 'react-bootstrap/Modal';
import React from "react";
import Button from "react-bootstrap/Button";
import {useState, useEffect} from 'react';
import { useDispatch, useSelector } from 'react-redux';
import "../../css/admin.css";
import {createSkill} from "../../redux/actions/skillsAction";


function SkillModal(props) {

    const [skill, setSkill] = useState({
        id:'',
        disciplineId: '',
        name: '',
    });

    const [submitted, setSubmitted] = useState(false);
    const dispatch = useDispatch();

    function handleChange(e) {
        let {name, value} = e.target;
        if(name === "id" || name === "disciplineId"){
            value = Number(value);
        }
        setSkill(skill => ({...skill, [name]: value}));
    }
    function handleSubmit(e) {
        e.preventDefault();

        setSubmitted(true);
        if(skill.disciplineId && skill.name && skill.id) {
            dispatch(createSkill(skill));
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
                    <div className={'form-group' + (submitted && !skill.id ? ' has-error' : '')}>
                        <label>Skill ID</label>
                        <input type="text" name="id" defaultValue={skill.id} onChange={handleChange}
                               className={'form-control'}/>
                        {submitted && !skill.id &&
                        <div className="help-block">Skill ID is required</div>
                        }
                    </div>
                    <div className={'form-group' + (submitted && !skill.name ? ' has-error' : '')}>
                        <label>Skill Name</label>
                        <input type="text" name="name" defaultvalue={skill.name} onChange={handleChange} className={'form-control'} />
                        {submitted && !skill.name &&
                        <div className="help-block">Skill Name is required</div>
                        }
                    </div>
                    <div className={'form-group' + (submitted && skill.disciplineId ? ' has-error' : '')}>
                        <label>Discipline ID</label>
                        <input type="text" name="disciplineId" defaultvalue={skill.disciplineId} onChange={handleChange} className={'form-control'} />
                        {submitted && !skill.disciplineId &&
                        <div className="help-block">Discipline ID is required</div>
                        }
                    </div>
                </form>

            </Modal.Body>
            <Modal.Footer><Button variant="secondary" onClick={props.onHide}>
                Close
            </Button>
                <Button variant="primary" onClick={handleSubmit}>
                    Create SKill
                </Button>
            </Modal.Footer>
        </Modal>
    );
}

export default SkillModal;