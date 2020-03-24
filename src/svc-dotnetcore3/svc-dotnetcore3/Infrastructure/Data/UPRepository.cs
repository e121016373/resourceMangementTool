using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class UPRepository : IUPRepository
    {
        private readonly string connectionString = string.Empty;

        public UPRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }


        public async Task<IEnumerable<UserProject>> GetProject(string username)
        {
            var sql = @"
                select DISTINCT P.Title as Project, L.Name as Location, UP.FromDate,  
                        UP.ToDate, P.UpdatedAt, PS.status as Status 
                    from UserInProjects3 UP
                    INNER JOIN Projects P
                    on UP.ProjectId = P.Id 
					INNER JOIN Locations L
					on P.LocationId = L.Id
                    INNER JOIN ProjectStatus2 PS
                    on PS.Id = P.Id

                where UP.UserId = 
                  (select Id from Users where Username = @Username)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<UserProject>(sql, new { Username = username });
        }

        public async Task<UserProject> GetAProject(string username, string project)
        {
            var sql = @"
                select P.Title as Project, L.Name as Location, UP.FromDate, UP.ToDate, UP.Hours 
                    from UserInProjects UP
                    INNER JOIN Projects P
                    on UP.ProjectId = P.Id 
					INNER JOIN Locations L
					on P.LocationId = L.Id
                    INNER JOIN ProjectStatus PS
                    on PS.status = 'Active'
                    AND PS.Id = P.Id

                where UP.UserId = 
                  (select Id from Users where Username = @Username) and
                  UP.ProjectId = (select Id from Projects where Title = @Project)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryFirstOrDefault(sql, new { Username = username, Project = project });
        }
        public async Task<UserProject> CreateProject(string username, UserProject proj)
        {
            var sql = @"
                insert into UserInProjects
                (UserId, ProjectId, FromDate, ToDate, Hours)
                values ((select Id from Users where Username = @Username),
                (select Id from Projects where Title = @Project),
                @FromDate, @ToDate, @Hours)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new
            {
                Username = username,
                Project = proj.Project,
                FromDate = proj.FromDate,
                ToDate = proj.ToDate,
                Hours = proj.Status
            });
            return proj;
        }
        public async Task<UserProject> DeleteProject(string username, string project)
        {
            var proj = await GetAProject(username, project);
            var sql = @"
                delete from UserInProjects
                where ProjectId = (select Id from Projects where Title = @Project)
                and UserId = (select Id from Users where Username = @Username)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new
            {
                Username = username,
                Project = project
            });
            return proj;
        }
        public async Task<UserProject> UpdateProject(string username, UserProject proj)
        {
            var sql = @"
                update UserInProjects
                set FromDate = @FromDate,
                    ToDate = @ToDate,
                    Hours = @Hours
                where UserId = (select Id from Users where Username = @Username)
                and ProjectId = (select Id from Projects where Title = @Project)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new
            {
                Username = username,
                Project = proj.Project,
                FromDate = proj.FromDate,
                ToDate = proj.ToDate,
                Hours = proj.Status
            });
            return proj;

        }
    }
}
