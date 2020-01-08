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
        [Route("/projects/{projectId}")]
        public IActionResult GetAProject(int projectId)
        {
            var project = projectsRepository.GetAProject(projectId);
            return Ok(project);
        }
    }
}