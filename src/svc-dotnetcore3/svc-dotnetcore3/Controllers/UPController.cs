using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Controllers
{
    //[Authorize]
    public class UPController : ControllerBase
    {
        private readonly IUPRepository upRepository;
        private readonly IMapper mapper;

        public UPController(IUPRepository upRepository, IMapper mapper)
        {
            this.upRepository = upRepository;
            this.mapper = mapper;
        }

        [HttpGet]
        [Route("/userprojects/{username}")]
        public async Task<ActionResult<IEnumerable<UserProject>>> GetProject([FromRoute]string username)
        {
            var response = await upRepository.GetProject(username);
            var viewModel = mapper.Map<IEnumerable<UserProject>>(response);
            return Ok(viewModel);
        }
        [HttpPost]
        [Route("/userprojects/{username}")]
        public async Task<ActionResult<UserProject>> CreateProject([FromRoute]string username, [FromBody] UserProject proj)
        {
            var response = await upRepository.CreateProject(username, proj);
            var viewModel = mapper.Map<UserProject>(response);
            return Created("GetProject", viewModel);
        }
        [HttpDelete]
        [Route("/userprojects/{username}")]
        public async Task<ActionResult<UserProject>> DeleteProject([FromRoute]string username, [FromBody] UserProject proj)
        {
            var response = await upRepository.DeleteProject(username, proj);
            var viewModel = mapper.Map<UserProject>(response);
            return Ok(viewModel);
        }
        [HttpPatch]
        [Route("/userprojects/{username}")]
        public async Task<ActionResult<UserProject>> UpdateProject([FromRoute]string username, [FromBody] UserProject proj)
        {
            var response = await upRepository.UpdateProject(username, proj);
            var viewModel = mapper.Map<UserProject>(response);
            return Accepted(viewModel);
        }
    }
}