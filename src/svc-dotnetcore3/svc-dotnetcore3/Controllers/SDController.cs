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
    public class SDController : ControllerBase
    {
        private readonly ISDRepository sdRepository;
        private readonly IMapper mapper;

        public SDController(ISDRepository sdRepository, IMapper mapper)
        {
            this.sdRepository = sdRepository;
            this.mapper = mapper;
        }

        [HttpGet]
        [Route("/sd/{username}")]
        public async Task<ActionResult<IEnumerable<UserSD>>> GetASD([FromRoute]string username)
        {
            var response = await sdRepository.GetASD(username);
            var viewModel = mapper.Map<IEnumerable<UserSD>>(response);
            return Ok(viewModel);
        }

        [HttpDelete]
        [Route("/sd/{username}/skill/{skill}")]
        public async Task<ActionResult<IEnumerable<UserSD>>> DeleteAS([FromRoute] string username, string skill)
        {
            var response = await sdRepository.DeleteAS(username, skill);
            var viewModel = mapper.Map<UserSD>(response);
            return Ok(viewModel);
        }

        [HttpDelete]
        [Route("/sd/{username}/discipline/{discipline}")]
        public async Task<ActionResult<IEnumerable<UserSD>>> DeleteAD([FromRoute] string username, string discipline)
        {
            var response = await sdRepository.DeleteAS(username, discipline);
            var viewModel = mapper.Map<UserSD>(response);
            return Ok(viewModel);
        }

        [HttpPost]
        [Route("/sd")]
        public async Task<ActionResult<UserSD>> CreateASD([FromBody] UserSD usd)
        {
            var response = await sdRepository.CreateASD(usd);
            var viewModel = mapper.Map<UserSD>(response);
            return Created("GetASD", viewModel);
        }

        [HttpPatch]
        [Route("/sd")]
        public async Task<ActionResult<IEnumerable<UserSD>>> UpdateASD([FromBody] UserSD usd)
        {
            var response = await sdRepository.UpdateASD(usd);
            var viewModel = mapper.Map<UserSD>(response);
            return Accepted("GetASD", viewModel);
        }
    }
}