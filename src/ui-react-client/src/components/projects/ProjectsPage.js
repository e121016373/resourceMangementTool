import React, {useEffect} from 'react';
import '../../css/collapseStyle.css';
import rd3 from 'react-d3-library';
import ProjectInfoPage from "./ProjectInfoPage";

// import {connect} from 'react-redux';
// import PropTypes from 'prop-types';
// import {loadProjects} from '../../redux/actions/projectsActions';
// import {loadLocations} from '../../redux/actions/locationsActions.js';
// import ProjectList from './ProjectList';

// const _ProjectsPage = ({
//   projects,
//   locations,
//   loadProjects,
//   loadLocations,
// }) => {
//   useEffect(() => {
//     if (projects.length === 0) {
//       loadProjects().catch(error => {
//         alert('Loading projects failed' + error);
//       });
//     }
//
//     if (locations.length === 0) {
//       loadLocations().catch(error => {
//         alert('Loading locations failed' + error);
//       });
//     }
//   }, [projects, locations, loadProjects, loadLocations]);
//
//   return (
//     <>
//       <h2>Projects</h2>
//       <ProjectList projects={projects} locations={locations} />
//     </>
//   );
// };
let project1 = {
    id: 1,
    name: "Project1",
    status: "Active",
    location: "Vancouver",
    startDate: "20190401",
    endDate: "20200201",
    utilization: "100%"
};
let project2 = {
    id: 2,
    name: "Project2",
    status: "Active",
    location: "Toronto",
    startDate: "20190821",
    endDate: "20191105",
    utilization: "60%"
};
let project3 = {
    id: 3,
    name: "Project3",
    status: "Inactive",
    location: "Richmond",
    startDate: "20200121",
    endDate: "20211010",
    utilization: "0%"
};
let projects = [project1, project2, project3]
let user1 = {id: 1, name: "user1", utilization: "30%"}
let user2 = {id: 2, name: "user2", utilization: "40%"}
let user3 = {id: 3, name: "user3", utilization: "0%"}
let users = [user1, user2, user3]

export class ProjectsPage extends React.Component {

    constructor() {
        super();
        this.state = {
            data: projects,
            expandedRows: []
        };
    }

    //todo: call back end function to get users info
    getUsersByProjectID(id) {
        return users;
    }


    handleRowClick(rowId) {
        const currentExpandedRows = this.state.expandedRows;
        const isRowCurrentlyExpanded = currentExpandedRows.includes(rowId);

        const newExpandedRows = isRowCurrentlyExpanded ?
            currentExpandedRows.filter(id => id !== rowId) :
            currentExpandedRows.concat(rowId);

        this.setState({expandedRows: newExpandedRows});
    }

    renderProject(project) {
        const clickCallback = () => this.handleRowClick(project.id);
        const projectRows = [
            <tr onClick={clickCallback} key={"row-data-" + project.id}>
                <td>{project.id}</td>
                {/*<td><a href={"/projects/" + project.name}>{project.name}</a></td>*/}
                <td>{project.name}</td>
                <td>{project.status}</td>
                <td>{project.location}</td>
                <td>{project.startDate}</td>
                <td>{project.endDate}</td>
                <td>{project.utilization}</td>
            </tr>
        ];

        const users = this.getUsersByProjectID(project.id);

        if (this.state.expandedRows.includes(project.id)) {
            projectRows.push(
                <tr key={"row-expanded-" + project.id}>
                    <td colSpan={7}>
                        <ProjectInfoPage project={project} users={users}/>
                    </td>
                </tr>
            );
        }

        return projectRows;
    }


    render() {
        let allProjectRows = [];

        this.state.data.forEach(project => {
            const perProjectRows = this.renderProject(project);
            allProjectRows = allProjectRows.concat(perProjectRows);
        });

        return (
            <div className="container-project">
                <div className="d1">1</div>
                <div className="d2">
                    <h1 >PROJECTS</h1>

                    <hr/>
                    <table id="t01">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Status</th>
                            <th>Location</th>
                            <th>StartDate</th>
                            <th>EndDate</th>
                            <th>Utilization</th>
                        </tr>
                        </thead>
                        <tbody>
                            {allProjectRows}
                        </tbody>
                    </table>
                </div>
                <div class="d1">3</div>
            </div>


        );
    }
}


{/*_ProjectsPage.propTypes = {*/
}
{/*projects: PropTypes.array.isRequired,*/
}
{/*locations: PropTypes.array.isRequired,*/
}
{/*loadProjects: PropTypes.func.isRequired,*/
}
{/*loadLocations: PropTypes.func.isRequired,*/
}
{/*};*/
}

{/*const mapStateToProps = state => {*/
}
{/*return {*/
}
{/*projects:*/
}
{/*state.locations.length === 0*/
}
{/*? []*/
}
{/*: state.projects.map(project => {*/
}
{/*return {*/
}
{/*...project,*/
}
{/*locationName: state.locations.find(*/
}
{/*element => element.id === project.locationId,*/
}
{/*).name,*/
}
{/*};*/
}
{/*}),*/
}
{/*locations: state.locations,*/
}
{/*};*/
}
{/*};*/
}

{/*const mapDispatchToProps = {*/
}
{/*loadProjects,*/
}
{/*loadLocations,*/
}
{/*};*/
}

{/*export default connect(*/
}
{/*mapStateToProps,*/
}
{/*mapDispatchToProps,*/
}
{/*)(_ProjectsPage);*/
}

// export default ProjectsPage;