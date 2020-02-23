using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;

namespace Web.API.Application.Repository
{
    public interface ISkillsRepository
    {
        // GET
        Task<IEnumerable<Skill>> GetAllSkills();
        Task<Skill> GetASkill(string name);

        // POST
        Task<Skill> AddASkill(string name, string disciplineName);

        // PUT
        Task<Skill> UpdateASkill(string name, string disciplineName);
        
        // DELETE
        Task<Skill> DeleteASkill(string name);
    }
}
