using Web.API.Application.Models;
using Web.API.Application.Repository;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;
using System.Threading.Tasks;

namespace Web.API.Infrastructure.Data
{
    public class ProjectsRepository : IProjectsRepository
    {
        private readonly string connectionString = string.Empty;

        public ProjectsRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        public async Task<IEnumerable<Project>> GetAllProjects()
        {
            var sql = @"
                select
                    P.Id, P.Number, P.Title, P.LocationId, P.CreatedAt, 
                    P.UpdatedAt, PS.FromDate, PS.ToDate, PS.Hours, PS.status
                from
                    Projects P
                INNER JOIN ProjectStatus PS
                on PS.Id = P.Id 
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<Project>(sql);
        }

        public async Task<IEnumerable<Project>> GetMostRecentProjects()
        {
            var sql = @"
                select top(25)
                    P.Id, P.Number, P.Title, P.LocationId, P.CreatedAt,
                    P.UpdatedAt, PS.FromDate, PS.ToDate, PS.Hours, PS.status
                from
                    Projects P
                INNER JOIN ProjectStatus PS
                on PS.Id = P.Id
                order by
                    UpdatedAt desc
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<Project>(sql);
        }

        public async Task<Project> GetAProject(string projectNumber)
        {
            var sql = @"
                select
                    P.Id, P.Number, P.Title, P.LocationId, P.CreatedAt, 
                    P.UpdatedAt, PS.FromDate, PS.ToDate, PS.Hours, PS.status
                from
                    Projects P
                INNER JOIN ProjectStatus PS
                on PS.Id = P.Id 
                where
                    P.Number = @Number
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryFirstOrDefaultAsync<Project>(sql, new { Number = projectNumber });
        }

        public async Task<Project> CreateAProject(Project project)
        {
            var sql = @"
                insert into Projects 
                    (Number, Title, LocationId)
                values 
                    (@Number, @Title, @LocationId);
                select cast(scope_identity() as int);
                insert into ProjectStatus
                    (Id, FromDate, ToDate, Status, hours)
                values 
                    (scope_identity(), @FromDate, @ToDate, @Status, @Hours)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var id = await connection.QuerySingleAsync<int>(sql, new {
                project.Number,
                project.Title,
                project.LocationId,
                project.FromDate,
                project.ToDate,
                project.Hours,
                project.Status
            });
            project.Id = id;
            return project;
        }

        public async Task<Project> UpdateAProject(Project project)
        {
            var sql = @"
                update
                    Projects
                set 
                    Number = @Number,
                    Title = @Title,
                    LocationId = @LocationId,
                    UpdatedAt = SYSUTCDATETIME()
                where 
                    Id = @Id;
                update ProjectStatus
                set
                    FromDate = @FromDate,
                    ToDate = @ToDate,
                    Status = @Status,
                    Hours = @Hours
                where Id = @Id
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            int result = await connection.ExecuteAsync(sql, new
            {
                project.Id,
                project.Number,
                project.Title,
                project.LocationId,
                project.FromDate,
                project.ToDate,
                project.Hours,
                project.Status
            });
            return project;
        }

        public async Task<Project> DeleteAProject(string number)
        {
            var project = await GetAProject(number);
            var sql = @"
                delete from ProjectStatus
                    where Id = (select Id from Projects where Number =  @Number);
                delete from Projects where Number = @Number
                
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { number });
            return project;
        }
    }
}
