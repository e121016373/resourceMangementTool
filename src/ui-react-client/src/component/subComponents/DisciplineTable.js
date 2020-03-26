import {BootstrapTable, TableHeaderColumn} from "react-bootstrap-table";
import "../../css/admin.css"
import "bootstrap/dist/css/bootstrap.min.css";
import {deleteADiscipline, loadDisciplines} from "../../redux/actions/disciplinesActions"
import {connect, useDispatch} from 'react-redux';
import React, {useEffect, useState} from 'react';
import Button from "react-bootstrap/Button";
import ButtonToolbar from "react-bootstrap/ButtonToolbar";
import DisciplineModal from "./DisciplineModal";





const DisciplineTable = ({
                             disciplines,
                             loadDisciplines,
                         }) => {
    useEffect(() => {
        if (disciplines.length === 0) {
            loadDisciplines().catch(error => {
                alert('Loading disciplines failed' + error);
            });
        }
    }, [disciplines, loadDisciplines]);

    const [modalShow, setModalShow] = useState(false);
    const [disToBeDel, setDisName] = useState ({
        name:'',
    });
    const dispatch = useDispatch();


    function onRowSelect(row, isSelected, e) {

        const val = row.name;
        setDisName(prevState => {
            return {...prevState, name:val}
        });

    }

    function onSelectAll(isSelected, rows) {
        if (isSelected) {
            alert('The selection only work on key which less than 3');
            return disciplines.map(p => p.id).filter(id => id < 3);
        }
    }

    function handleDelete(e) {
        e.preventDefault();

        if(disToBeDel.name) {
            dispatch(deleteADiscipline(disToBeDel));
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
                    Add Discipline
                </Button>

                <DisciplineModal
                    show={modalShow}
                    onHide={() => setModalShow(false)}
                />
                <div className="divider"/>
                <Button variant="danger" onClick={handleDelete}>Remove Discipline</Button>
            </ButtonToolbar>

            <BootstrapTable data={ disciplines } search={true} pagination = {true} selectRow = {selectRowProp} striped hover condensed>
                <TableHeaderColumn width="150" dataField='id' isKey>Id</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='name'> Discipline Name</TableHeaderColumn>
                <TableHeaderColumn width="150" dataField='TODO'> Number of People</TableHeaderColumn>
            </BootstrapTable>
        </div>
    );
};

const mapStateToProps = state => {
    return {
        disciplines: state.disciplines,
    };
};

const mapDispatchToProps = {
    loadDisciplines,
};

export default connect(
    mapStateToProps,
    mapDispatchToProps,
)(DisciplineTable);
