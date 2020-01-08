using Microsoft.AspNetCore.Mvc;
using Web.API.Application.Repository;

namespace Web.API.Controllers
{
    public class LocationsController : ControllerBase
    {
        private readonly ILocationsRepository locationsRepository;

        public LocationsController(ILocationsRepository locationsRepository)
        {
            this.locationsRepository = locationsRepository;
        }

        [HttpGet]
        [Route("/locations/all")]
        public IActionResult GetAllLocations()
        {
            var locations = locationsRepository.GetAllLocations();
            return Ok(locations);
        }

        [HttpGet]
        [Route("locations/{locationCode}")]
        public IActionResult GetALocation(string locationCode)
        {
            var location = locationsRepository.GetALocation(locationCode);
            return Ok(location);
        }
    }
}