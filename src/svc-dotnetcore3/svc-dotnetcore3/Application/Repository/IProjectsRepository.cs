using Web.API.Application.Models;
using System.Collections.Generic;

namespace Web.API.Application.Repository
{
    public interface IProjectsRepository
    {
        List<Project> GetAllProjects();
        Project GetAProject(int projectId);
    }
}
