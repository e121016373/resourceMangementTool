using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;

namespace Web.API.Application.Repository
{
    public interface IUPRepository
    {
        Task<IEnumerable<UserProject>> GetProject(string username);
        Task<UserProject> GetAProject(string username, string project);
        Task<UserProject> CreateProject(string username, string project);
        Task<UserProject> DeleteProject(string username, string project);
        Task<UserProject> UpdateProject(string username, string project, int year, Hour hr);
    }
}
