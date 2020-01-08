using Web.API.Application.Models;
using System.Collections.Generic;

namespace Web.API.Application.Repository
{
    public interface IProjectsRepository
    {
        List<Project> GetAllProjects();
        List<Project> GetMostRecentProjects();
        Project GetAProject(string projectNumber);
    }
}
