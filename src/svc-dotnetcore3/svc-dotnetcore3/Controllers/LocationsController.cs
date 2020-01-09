using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Controllers
{
    public class LocationsController : ControllerBase
    {
        private readonly ILocationsRepository locationsRepository;
        private readonly IMapper mapper;

        public LocationsController(ILocationsRepository locationsRepository, IMapper mapper)
        {
            this.locationsRepository = locationsRepository;
            this.mapper = mapper;
        }

        [HttpGet]
        [Route("/locations/all")]
        public async Task<ActionResult<IEnumerable<Location>>> GetAllLocations()
        {
            var response = await locationsRepository.GetAllLocations();
            var viewModel = mapper.Map<IEnumerable<Location>>(response);
            return Ok(viewModel);
        }

        [HttpGet]
        [Route("locations/{locationCode}")]
        public async Task<ActionResult<Location>> GetALocation(string locationCode)
        {
            var response = await locationsRepository.GetALocation(locationCode);
            var viewModel = mapper.Map<Location>(response);
            return Ok(viewModel);
        }
    }
}