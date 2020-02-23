using System.Collections.Generic;
using System.Threading.Tasks;
using Web.API.Application.Models;

namespace Web.API.Application.Repository
{
    public interface IDisciplinesRepository
    {
        Task<IEnumerable<Discipline>> GetAllDisciplines();
        Task<Discipline> GetADiscipline(string Name);
        Task<Discipline> UpdateADiscipline(string oldName, string newName);
        Task<Discipline> AddADiscipline(Discipline discipline);
        Task<Discipline> DeleteADisicipline(string name);
    }
}
