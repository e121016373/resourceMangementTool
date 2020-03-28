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
                    P.UpdatedAt
                from
                    Projects P
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
                    P.UpdatedAt
                from
                    Projects P
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
                    P.UpdatedAt
                from
                    Projects P
                where
                    P.Number = @Number
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryFirstOrDefaultAsync<Project>(sql, new { Number = projectNumber });
        }
        public async Task<Project> GetAProjectWithTitle(string project)
        {
            var sql = @"
                select
                    P.Id, P.Number, P.Title, P.LocationId, P.CreatedAt, 
                    P.UpdatedAt
                from
                    Projects P
                where
                    P.Title = @Title
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryFirstOrDefaultAsync<Project>(sql, new { Title = project });
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

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var id = await connection.QuerySingleAsync<int>(sql, new {
                project.Number,
                project.Title,
                project.LocationId         
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
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            int result = await connection.ExecuteAsync(sql, new
            {
                project.Id,
                project.Number,
                project.Title,
                project.LocationId,
            });
            return project;
        }

        public async Task<Project> DeleteAProject(string number)
        {
            var project = await GetAProject(number);
            var sql = @"
                delete from ProjectStatus
                    where Id = (select Id from Projects where Number =  @Number);
                delete from Projects where Number = @Number;
                delete from UserHours where ProjectId = (select Id from Projects
                where Number = @Number)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { number });
            return project;
        }
        public async Task<IEnumerable<ProjectStatus>> CheckAProject(string project)
        {
            var sql = @"
                select P.Title as Project, PS.FromDate, PS.ToDate, PS.Status, PS.Year,
                PS.Jan, PS.Feb, PS.Mar, PS.Apr, PS.May, PS.Apr, PS.Jun, PS.Jul, PS.Aug,
                PS.Sep, PS.Oct, PS.Nov, PS.Dec
                from ProjectStatus PS
                INNER JOIN Projects P
                on P.Id = PS.Id
                where PS.Id = (select Id from Projects where Title = @Title) 
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<ProjectStatus>(sql, new
            {
                Title = project
            });
        }
        public async Task<IEnumerable<ProjectStatus>> GetActivatedProjects()
        {
            var sql = @"
                select DISTINCT P.Title as Project, PS.FromDate, PS.ToDate, PS.Status, PS.Year,
                PS.Jan, PS.Feb, PS.Mar, PS.Apr, PS.May, PS.Apr, PS.Jun, PS.Jul, PS.Aug,
                PS.Sep, PS.Oct, PS.Nov, PS.Dec
                from ProjectStatus PS
                INNER JOIN Projects P
                on P.Id = PS.Id
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<ProjectStatus>(sql, new
            {
            });
        }
        public async Task<ProjectStatus> ActivateAProject(ProjectStatus ps)
        {
            var sql = @"
                insert into ProjectStatus
                (Id, FromDate, ToDate, Status, Year, Jan, Feb, Mar, Apr, May,
                Jun, Jul, Aug, Sep, Oct, Nov, Dec)
                values((select Id from Projects where Title = @Title),
                @FromDate, @ToDate, @Status, @Year, @Jan, @Feb, @Mar, @Apr,
                @May, @Jun, @Jul, @Aug, @Sep, @Oct, @Nov, @Dec);
                
                update Projects
                set UpdatedAt = GETDATE()
                where Title = @Title
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { Title = ps.Project,
            ps.FromDate, ps.ToDate, ps.Status, ps.Year, ps.Jan, ps.Feb, ps.Mar,
            ps.Apr, ps.May, ps.Jun, ps.Jul, ps.Aug, ps.Sep, ps.Oct, ps.Nov,
            ps.Dec});
            return ps;
        }

        public async Task<IEnumerable<ProjectStatus>> DeactivateAProject(string project)
        {
            var pr = await CheckAProject(project);
            var sql = @"
                delete * from ProjectStatus
                where Id = (select Id from Projects where Title = @Title); 

                update Projects
                set UpdatedAt = GETDATE()
                where Title = @Title;
            ";
            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { Title = project });
            return pr;
        }

        public async Task<IEnumerable<ProjectStatus>> PatchAProject(string project, int year, Hour hr)
        {
            var sql = @"
                if @month = 'jan'
                 update ProjectStatus
                 set Jan = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'feb'
                 update ProjectStatus
                 set Feb = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'mar'
                 update ProjectStatus
                 set Mar = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'apr'
                 update ProjectStatus
                 set Apr = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'may'
                 update ProjectStatus
                 set May = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'jun'
                 update ProjectStatus
                 set Jun = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'jul'
                 update ProjectStatus
                 set Jul = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'aug'
                 update ProjectStatus
                 set Aug = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'sep'
                 update ProjectStatus
                 set Sep = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'oct'
                 update ProjectStatus
                 set Oct = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'nov'
                 update ProjectStatus
                 set Nov = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
                if @month = 'dec'
                 update ProjectStatus
                 set Dec = @Hours
                    where Id = (select Id from Projects where Title = @Project)
                    and Year = @Year;
            ";
            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { Project = project, Year = year,
            month = hr.Month, Hours = hr.Hours});
            return await CheckAProject(project);
        }


    }
}
