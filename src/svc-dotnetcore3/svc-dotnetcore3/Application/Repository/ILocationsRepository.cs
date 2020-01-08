using System.Collections.Generic;
using Web.API.Application.Models;

namespace Web.API.Application.Repository
{
    public interface ILocationsRepository
    {
        List<Location> GetAllLocations();
        Location GetALocation(string locationCode);
    }
}
