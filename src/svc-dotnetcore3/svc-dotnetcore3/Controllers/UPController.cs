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
    }
}