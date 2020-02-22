using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;

namespace Web.API.Application.Repository
{
    public interface IAdminRepository
    {
        Task<IEnumerable<Admin>> GetAllUsers();
        Task<IEnumerable<Admin>> GetAllSkills();
        Task<IEnumerable<Admin>> GetAllDisciplines();
        Task<IEnumerable<Admin>> GetAllLocations();
    }
}
