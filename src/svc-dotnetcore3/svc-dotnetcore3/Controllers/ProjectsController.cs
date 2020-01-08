using Microsoft.AspNetCore.Mvc;
using Web.API.Application.Repository;

namespace Web.API.Controllers
{
    public class ProjectsController : ControllerBase
    {
        private readonly IProjectsRepository projectsRepository;

        public ProjectsController(IProjectsRepository projectsRepository)
        {
            this.projectsRepository = projectsRepository;
        }

        [HttpGet]
        [Route("/projects/all")]
        public IActionResult GetAllProjects()
        {
            var projects = projectsRepository.GetAllProjects();
            return Ok(projects);
        }

        [HttpGet]
        [Route("/projects/{projectNumber}")]
        public IActionResult GetAProject(string projectNumber)
        {
            var project = projectsRepository.GetAProject(projectNumber);
            return Ok(project);
        }

        [HttpGet]
        [Route("/projects/most-recent")]
        public IActionResult GetMostRecentProjects()
        {
            var project = projectsRepository.GetMostRecentProjects();
            return Ok(project);
        }
    }
}