using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;

namespace Web.API.Application.Repository
{
    public interface ISDRepository
    {
        Task<IEnumerable<UserSD>> GetASD(string username);
        Task<UserSD> CreateASD(UserSD usd);
        Task<IEnumerable<UserSD>> DeleteASD(UserSD usd);
        Task<IEnumerable<UserSD>> UpdateASD(UserSD usd);
    }
}
