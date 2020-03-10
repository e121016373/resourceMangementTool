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
    public class UDController : ControllerBase
    {
        private readonly IUDRepository udRepository;
        private readonly IMapper mapper;

        public UDController(IUDRepository udRepository, IMapper mapper)
        {
            this.udRepository = udRepository;
            this.mapper = mapper;
        }

        [HttpGet]
        [Route("/ud/{username}")]
        public async Task<ActionResult<IEnumerable<UserDiscipline>>> GetDiscipline([FromRoute]string username)
        {
            var response = await udRepository.GetDiscipline(username);
            var viewModel = mapper.Map<IEnumerable<UserDiscipline>>(response);
            return Ok(viewModel);
        }
    }
}