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
    public class DisciplinesController : ControllerBase
    {
        private readonly IDisciplinesRepository disciplinesRepository;
        private readonly IMapper mapper;

        public DisciplinesController(IDisciplinesRepository disciplinesRepository, IMapper mapper)
        {
            this.disciplinesRepository = disciplinesRepository;
            this.mapper = mapper;
        }

        [HttpGet]
        [Route("/discipline")]
        public async Task<ActionResult<IEnumerable<Discipline>>> GetAllDisciplines()
        {
            var response = await disciplinesRepository.GetAllDisciplines();
            var viewModel = mapper.Map<IEnumerable<Discipline>>(response);
            return Ok(viewModel);
        }
        
    }
}