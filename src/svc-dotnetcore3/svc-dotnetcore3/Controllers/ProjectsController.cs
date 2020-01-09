using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Controllers
{
    public class ProjectsController : ControllerBase
    {
        private readonly IProjectsRepository projectsRepository;
        private readonly IMapper mapper;

        public ProjectsController(IProjectsRepository projectsRepository, IMapper mapper)
        {
            this.projectsRepository = projectsRepository;
            this.mapper = mapper;
        }

        [HttpGet]
        [Route("/projects/all")]
        public async Task<ActionResult<IEnumerable<Project>>> GetAllProjects()
        {
            var response = await projectsRepository.GetAllProjects();
            var viewModel = mapper.Map<IEnumerable<Project>>(response);
            return Ok(viewModel);
        }

        [HttpGet]
        [Route("/projects/{projectNumber}", Name = "GetAProject")]
        public async Task<ActionResult<Project>> GetAProject(string projectNumber)
        {
            var project = await projectsRepository.GetAProject(projectNumber);
            return Ok(project);
        }

        [HttpGet]
        [Route("/projects/most-recent")]
        public async Task<ActionResult<IEnumerable<Project>>> GetMostRecentProjects()
        {
            var response = await projectsRepository.GetMostRecentProjects();
            var viewModel = mapper.Map<IEnumerable<Project>>(response);
            return Ok(viewModel);
        }

        [HttpPost]
        [Route("/projects")]
        public async Task<ActionResult<Project>> CreateAProject([FromBody] Project project)
        {
            var response = await projectsRepository.CreateAProject(project);
            var viewModel = mapper.Map<Project>(response);
            return Created("GetAProject", viewModel);
        }
    }
}