using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;

namespace Web.API.Application.Repository
{
    public interface IUURepository
    {
        Task<IEnumerable<UserUtil>> GetUserUtil(string username);
    }
}
