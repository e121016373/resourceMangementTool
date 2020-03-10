using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;

namespace Web.API.Application.Repository
{
    public interface ISDRepository
    {
        Task<IEnumerable<UserSD>> GetASD(string username);
        Task<UserSD> CreateASD(UserSD usd);
        Task<IEnumerable<UserSD>> DeleteAD(string username, string discipline);
        Task<IEnumerable<UserSD>> DeleteAS(string username, string skill);
        Task<IEnumerable<UserSD>> UpdateASD(UserSD usd);
    }
}
