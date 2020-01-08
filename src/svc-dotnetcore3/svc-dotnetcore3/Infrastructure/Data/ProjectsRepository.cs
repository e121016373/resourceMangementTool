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

        public List<Project> GetMostRecentProjects()
        {
            var sql = @"
                select top(25)
                    Id, Number, Title, LocationId, CreatedAt, UpdatedAt
                from
                    Projects
                order by
                    UpdatedAt desc
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection.Query<Project>(sql).ToList();
        }

        public Project GetAProject(string projectNumber)
        {
            var sql = @"
                select 
                    Id, Number, Title, LocationId, CreatedAt, UpdatedAt
                from
                    Projects
                where
                    Number = @Number
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection.QueryFirstOrDefault<Project>(sql, new { Number = projectNumber });
        }
    }
}
