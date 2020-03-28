using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;

namespace Web.API.Application.Repository
{
    public interface ISearchRepository
    {
        Task<IEnumerable<UserInSearch>> GetAllUsers(Search search);
        Task<IEnumerable<Project>> GetAllProjects(Search search);
    }
}
