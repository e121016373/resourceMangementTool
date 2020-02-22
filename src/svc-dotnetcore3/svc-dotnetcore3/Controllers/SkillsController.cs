using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Controllers
{
    [Authorize]
    public class SkillsController : ControllerBase
    {
        private readonly ISkillsRepository skillsRepository;
        private readonly IMapper mapper;

        public SkillsController(ISkillsRepository skillsRepository, IMapper mapper)
        {
            this.skillsRepository = skillsRepository;
            this.mapper = mapper;
        }
        
        [HttpGet]
        [Route("/skill")]
        public async Task<ActionResult<IEnumerable<Skill>>> GetAllSkills()
        {
            var response = await skillsRepository.GetAllSkills();
            var viewModel = mapper.Map<IEnumerable<Skill>>(response);
            return Ok(viewModel);
        }

    }
}