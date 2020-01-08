using Web.API.Application.Models;
using Web.API.Application.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using Dapper;

namespace Web.API.Infrastructure.Data
{
    public class ProjectsRepository : IProjectsRepository
    {
        private readonly string connectionString = string.Empty;

        public ProjectsRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        public List<Project> GetAllProjects()
        {
            var sql = @"
                select
                    Id, Number, Title, LocationId, CreatedAt, UpdatedAt
                from
                    Projects
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection.Query<Project>(sql).ToList();
        }

        public Project GetAProject(int projectId)
        {
            var sql = @"
                select 
                    Id, Number, Title, LocationId, CreatedAt, UpdatedAt
                from
                    Projects
                where
                    Id = @Id
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection.QueryFirstOrDefault<Project>(sql, new { Id = projectId });
        }
    }
}
