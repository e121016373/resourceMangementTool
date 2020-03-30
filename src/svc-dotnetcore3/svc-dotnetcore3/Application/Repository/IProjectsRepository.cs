using Web.API.Application.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Web.API.Application.Repository
{
    public interface IProjectsRepository
    {
        // GET
        Task<IEnumerable<Project>> GetAllProjects();
        Task<IEnumerable<Project>> GetMostRecentProjects();
        Task<Project> GetAProject(string projectNumber);
        Task<Project> GetAProjectWithTitle(string project);
        Task<IEnumerable<ProjectStatus>> CheckAProject(string project);
        Task<IEnumerable<ProjectStatus>> GetActivatedProjects();
        Task<ProjectStatus> GetActivatedProjectsWhere(string project);
        Task<IEnumerable<Years>> GetYearsOfProject(string project);

        // POST
        Task<ProjectCreate> CreateAProject(ProjectCreate project);
        Task<ProjectStatus> ActivateAProject(string project);

        // PUT
        Task<Project> UpdateAProject(Project project);

        // DELETE
        Task<Project> DeleteAProject(string number);
        Task<IEnumerable<ProjectStatus>> DeactivateAProject(string project);

        // PATCH
        Task<IEnumerable<ProjectStatus>> PatchAProject(string project, int year, Hour hr);
    }
}
