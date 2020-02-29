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
        [Route("/skills")]
        public async Task<ActionResult<IEnumerable<Skill>>> GetAllSkills()
        {
            var response = await skillsRepository.GetAllSkills();
            var viewModel = mapper.Map<IEnumerable<Skill>>(response);
            return Ok(viewModel);
        }

        [HttpGet]
        [Route("/skills/{name}")]
        public async Task<ActionResult<Skill>> GetASkill(string name)
        {
            var response = await skillsRepository.GetASkill(name);
            var viewModel = mapper.Map<Skill>(response);
            return Ok(viewModel);
        }

        [HttpPut]
        [Route("/skills")]
        public async Task<ActionResult<Skill>> UpdateASkill(string oldName, string newName, string discipline)
        {
            var response = await skillsRepository.UpdateASkill(oldName, newName, discipline);
            var viewModel = mapper.Map<Skill>(response);
            return Ok(viewModel);
        }

        [HttpPut]
        [Route("/skills")]
        public async Task<ActionResult<Skill>> AddASkill(string skillName, string disciplineName)
        {
            var response = await skillsRepository.AddASkill(skillName, disciplineName);
            var viewModel = mapper.Map<Skill>(response);
            return Created("GetASkill", viewModel);
        }

        [HttpDelete]
        [Route("/skills")]
        public async Task<ActionResult<Skill>> DeleteASkill(string name)
        {
            var response = await skillsRepository.DeleteASkill(name);
            var viewModel = mapper.Map<Skill>(response);
            return Ok(viewModel);
        }

    }
}