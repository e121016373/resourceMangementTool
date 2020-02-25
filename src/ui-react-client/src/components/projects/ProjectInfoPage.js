import React from 'react';
import {useParams} from "react-router-dom";

const ProjectInfoPage = () => {
    const {project} = useParams();
    // noinspection JSAnnotator
    return (
        <>
            <h1> {project} BLANK PAGE</h1>
            <hr />
            <p>THis is {project}</p>
            <br />
        </>
    );
};


export default ProjectInfoPage;