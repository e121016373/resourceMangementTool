using Web.API.Application.Models;
using Web.API.Application.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using Dapper;
using System.Threading.Tasks;
using System.Data;

namespace Web.API.Infrastructure.Data
{
    public class ProjectsRepository : IProjectsRepository
    {
        private readonly IDbConnection connection;
        private readonly string connectionString = string.Empty;

        public ProjectsRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
            this.connection = new SqlConnection(this.connectionString);
        }

        public Task<IEnumerable<Project>> GetAllProjects()
        {
            var sql = @"
                select
                    Id, Number, Title, LocationId, CreatedAt, UpdatedAt
                from
                    Projects
            ;";

            return connection.QueryAsync<Project>(sql);
        }

        public Task<IEnumerable<Project>> GetMostRecentProjects()
        {
            var sql = @"
                select top(25)
                    Id, Number, Title, LocationId, CreatedAt, UpdatedAt
                from
                    Projects
                order by
                    UpdatedAt desc
            ;";

            return connection.QueryAsync<Project>(sql);
        }

        public Task<Project> GetAProject(string projectNumber)
        {
            var sql = @"
                select 
                    Id, Number, Title, LocationId, CreatedAt, UpdatedAt
                from
                    Projects
                where
                    Number = @Number
            ;";

            return connection.QueryFirstOrDefaultAsync<Project>(sql, new { Number = projectNumber });
        }

        public async Task<Project> CreateAProject(Project project)
        {
            var sql = @"
                insert into Projects 
                    (Number, Title, LocationId)
                values 
                    (@Number, @Title, @LocationId);
                select cast(scope_identity() as int);
            ;";

            var id = await connection.QuerySingleAsync<int>(sql, new {
                project.Number,
                project.Title,
                project.LocationId
            });
            project.Id = id;
            return project;
        }
    }
}
