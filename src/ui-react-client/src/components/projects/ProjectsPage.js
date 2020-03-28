import React from 'react';
import '../../css/collapseStyle.css';
import ProjectInfoPage from "./ProjectInfoPage";
import CreateProject from './createNewProject';
import {connect} from 'react-redux';
import PropTypes from 'prop-types';
import {loadProjects} from '../../redux/actions/projectsActions';

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

class ProjectsPage extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            data: [],
            expandedRows: []
        };
    }

    //todo: call back end function to get users info
    getUsersByProjectID(id) {
        return users;
    }


    // componentDidUpdate(prevProps,prevStates){
    //     console.log('run to componentdidmount');
    //     if (this.state.data.length ===0) {
    //         console.log('before loadprojects');
    //         loadProjects().catch(error => {
    //             alert("load projects failed"+error);
    //         })
    //     }
    // }
    getProjects(){
        console.log('before load');
        console.log(loadProjects);
        this.props.loadProjects();
    }

    // useEffect() {
    //     if (projects.length === 0) {
    //         console.log('run to componentdidmount');
    //         loadProjects().catch(error => {
    //             alert('Loading projects failed' + error);
    //         });
    //     }
    // };


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
                <th>{project.id}</th>
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
        console.log('before get');
        this.getProjects();
        // this.setState({data: this.getallprojects()});

        this.state.data.forEach(project => {
            const perProjectRows = this.renderProject(project);
            allProjectRows = allProjectRows.concat(perProjectRows);
        });

        return (
            <div>
                <div style={{
                    display: 'flex',
                    'background-color': '#0f6674',
                }} className="container-projectheadFlex">
                    <div style={{
                        'background-color': "#FFDBC8",
                        'padding-top': '10px',
                        'padding-bottom': '10px',
                        'padding-left': '30px',
                        'padding-right': '30px',
                    }} className='createButton'>
                        <CreateProject/>
                    </div>
                </div>
                <hr/>
                <table className="table">
                    <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Status</th>
                        <th scope="col">Location</th>
                        <th scope="col">StartDate</th>
                        <th scope="col">EndDate</th>
                        <th scope="col">Utilization</th>
                    </tr>
                    </thead>
                    <tbody>
                    {allProjectRows}
                    </tbody>
                </table>
            </div>
        );
    }
}


ProjectsPage.propTypes = {
    projects: PropTypes.array.isRequired,
    loadProjects: PropTypes.func.isRequired,
};

const mapStateToProps = state => {
    return {
        projects: state.data,
        expandedRows: state.expandedRows,
    };
};

const mapDispatchToProps = {
    loadProjects,
};

export default connect(
    mapStateToProps,
    mapDispatchToProps,
)(ProjectsPage);

// function ProjectsPage(props) {
//
//
//     // constructor(props) {
//     //     super(props);
//     //     this.state = {
//     //         data: projects,
//     //         expandedRows: []
//     //     };
//     // }
//     const [projectsObject, setProject] = useState({
//         data: projects,
//         expandedRows: []
//     });
//
//     const getUsersByProjectID = (id) => {
//         return users;
//     };
//
//     const handleRowClick = (rowId) => {
//         const currentExpandedRows = projectsObject.expandedRows;
//         const isRowCurrentlyExpanded = currentExpandedRows.includes(rowId);
//
//         const newExpandedRows = isRowCurrentlyExpanded ?
//             currentExpandedRows.filter(id => id !== rowId) :
//             currentExpandedRows.concat(rowId);
//
//         setProject({expandedRows: newExpandedRows});
//     };
//
//     const renderProject = (project) => {
//         const clickCallback = () => handleRowClick(project.id);
//         const projectRows = [
//             <tr onClick={clickCallback} key={"row-data-" + project.id}>
//                 <th>{project.id}</th>
//                 {/*<td><a href={"/projects/" + project.name}>{project.name}</a></td>*/}
//                 <td>{project.name}</td>
//                 <td>{project.status}</td>
//                 <td>{project.location}</td>
//                 <td>{project.startDate}</td>
//                 <td>{project.endDate}</td>
//                 <td>{project.utilization}</td>
//             </tr>
//         ];
//
//         const users = getUsersByProjectID(project.id);
//
//         if (projectsObject.expandedRows.includes(project.id)) {
//             projectRows.push(
//                 <tr key={"row-expanded-" + project.id}>
//                     <td colSpan={7}>
//                         <ProjectInfoPage project={project} users={users}/>
//                     </td>
//                 </tr>
//             );
//         }
//
//         return projectRows;
//     };
//
//
//
//     const constructRows = ()=>{
//         let allProjectRows = [];
//         projectsObject.data.forEach(project => {
//             const perProjectRows = renderProject(project);
//             allProjectRows = allProjectRows.concat(perProjectRows);
//         });
//         return allProjectRows;
//     }
//
//     return (
//         <div>
//             <div style={{
//                 display: 'flex',
//                 'background-color': '#0f6674',
//             }} className="container-projectheadFlex">
//                 <div style={{
//                     'background-color': "#FFDBC8",
//                     'padding-top': '10px',
//                     'padding-bottom': '10px',
//                     'padding-left': '30px',
//                     'padding-right': '30px',
//                 }} className='createButton'>
//                     <CreateProject/>
//                 </div>
//             </div>
//             <hr/>
//             <table className="table">
//                 <thead>
//                 <tr>
//                     <th scope="col">ID</th>
//                     <th scope="col">Name</th>
//                     <th scope="col">Status</th>
//                     <th scope="col">Location</th>
//                     <th scope="col">StartDate</th>
//                     <th scope="col">EndDate</th>
//                     <th scope="col">Utilization</th>
//                 </tr>
//                 </thead>
//                 <tbody>
//                 {constructRows()}
//                 </tbody>
//             </table>
//         </div>
//     );
//
// }
//
//
// ProjectsPage.propTypes = {
//     projects: PropTypes.array.isRequired,
//     locations: PropTypes.array.isRequired,
//     loadProjects: PropTypes.func.isRequired,
//     loadLocations: PropTypes.func.isRequired,
// };
//
// const mapStateToProps = state => {
//     return {
//         projects:
//             state.locations.length === 0
//                 ? []
//                 : state.projects.map(project => {
//                     return {
//                         ...project,
//                         locationName: state.locations.find(
//                             element => element.id === project.locationId,
//                         ).name,
//                     };
//                 }),
//         locations: state.locations,
//     };
// };
//
// const mapDispatchToProps = {
//     loadProjects,
//     loadLocations,
// };
//
// export default connect(
//     mapStateToProps,
//     mapDispatchToProps,
// )(ProjectsPage);



