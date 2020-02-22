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
    public class AdminController : ControllerBase
    {
        private readonly IAdminController adminRepository;
        private readonly IMapper mapper;

        public AdminController(IAdminRepository adminRepository, IMapper mapper)
        {
            this.adminRepository = adminRepository;
            this.mapper = mapper;
        }

        [HttpGet]
        [Route("/admin")]
        public async Task<ActionResult<IEnumerable<Admin>>> GetAllUsers()
        {
            var response = await adminRepository.GetAllUsers();
            var viewModel = mapper.Map<IEnumerable<Admin>>(response);
            return Ok(viewModel);
        } 
        
        [HttpGet]
        [Route("/admin")]
        public async Task<ActionResult<IEnumerable<Admin>>> GetAllSkills()
        {
            var response = await adminRepository.GetAllSkills();
            var viewModel = mapper.Map<IEnumerable<Admin>>(response);
            return Ok(viewModel);
        }

        [HttpGet]
        [Route("/admin")]
        public async Task<ActionResult<IEnumerable<Admin>>> GetAllDisciplines()
        {
            var response = await adminRepository.GetAllDisciplines();
            var viewModel = mapper.Map<IEnumerable<Admin>>(response);
            return Ok(viewModel);
        }

        [HttpGet]
        [Route("/admin")]
        public async Task<ActionResult<IEnumerable<Admin>>> GetAllLocations()
        {
            var response = await adminRepository.GetAllLocations();
            var viewModel = mapper.Map<IEnumerable<Admin>>(response);
            return Ok(viewModel);
        }

    }
}