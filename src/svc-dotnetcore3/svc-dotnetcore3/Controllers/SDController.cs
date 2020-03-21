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
        [Route("/personal/{username}")]
        public async Task<ActionResult<IEnumerable<UserSD>>> GetASD([FromRoute]string username)
        {
            var response = await sdRepository.GetASD(username);
            var viewModel = mapper.Map<IEnumerable<UserSD>>(response);
            return Ok(viewModel);
        }


        [HttpDelete]
        [Route("/{username}/{discipline}/{skill}")]
        public async Task<ActionResult<IEnumerable<UserSD>>> DeleteAS([FromRoute] string username, string discipline, string skill)
        {
            var response = await sdRepository.DeleteAS(username, discipline, skill);
            var viewModel = mapper.Map<IEnumerable<UserSD>>(response);
            return Ok(viewModel);
        }

        [HttpDelete]
        [Route("/{username}/{discipline}")]
        public async Task<ActionResult<IEnumerable<UserSD>>> DeleteAD([FromRoute] string username, string discipline)
        {
            var response = await sdRepository.DeleteAD(username, discipline);
            var viewModel = mapper.Map<IEnumerable<UserSD>>(response);
            return Ok(viewModel);
        }

        [HttpPost]
        [Route("/personal")]
        public async Task<ActionResult<UserSD>> CreateASD([FromBody] UserSD usd)
        {
            var response = await sdRepository.CreateASD(usd);
            var viewModel = mapper.Map<UserSD>(response);
            return Created("GetASD", viewModel);
        }

        [HttpPut]
        [Route("/personal")]
        public async Task<ActionResult<IEnumerable<UserSD>>> UpdateASD([FromBody] UserSD usd)
        {
            var response = await sdRepository.UpdateASD(usd);
            var viewModel = mapper.Map<IEnumerable<UserSD>>(response);
            return Accepted("GetASD", viewModel);
        }

        [HttpPatch]
        [Route("/personal/{username}/{discipline}")]
        public async Task<ActionResult<IEnumerable<UserSD>>> PatchASD([FromRoute] string username, [FromRoute] string discipline, [FromBody] int yoe )
        {
            var response = await sdRepository.PatchASD(username, discipline, yoe);
            var viewModel = mapper.Map<IEnumerable<UserSD>>(response);
            return Accepted("GetASD", viewModel);
        }

    }
}