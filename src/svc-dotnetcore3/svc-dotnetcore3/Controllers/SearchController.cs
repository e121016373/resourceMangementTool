using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Controllers
{
    // [Authorize]
    public class SearchController : ControllerBase
    {
        private readonly ISearchRepository searchRepository;
        private readonly IMapper mapper;

        public SearchController(ISearchRepository searchRepository, IMapper mapper)
        {
            this.searchRepository = searchRepository;
            this.mapper = mapper;
        }

        [HttpGet]
        [Route("/search/users")]
        public async Task<ActionResult<IEnumerable<User>>> GetAllUsers([FromBody] Search search)
        {
            var response = await searchRepository.GetAllUsers(search);
            var viewModel = mapper.Map<IEnumerable<User>>(response);
            return Ok(viewModel);
        }
    }
}