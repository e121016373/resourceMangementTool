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
                SELECT
                    P.Id, P.Number, P.Title, L.Name as Location, P.CreatedAt, 
                    P.UpdatedAt,
                    (SELECT Count(DISTINCT UserId)
                        FROM UserHours
                        WHERE ProjectId = P.Id
                        GROUP BY ProjectId
                    ) AS 'NumberOfPeople'
                FROM
                    Projects P
                    INNER JOIN Locations L ON L.Id = P.LocationId
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<Project>(sql);
        }

        public async Task<IEnumerable<Project>> GetMostRecentProjects()
        {
            var sql = @"
                select top(25)
                    P.Id, P.Number, P.Title, L.Name as Location, P.CreatedAt,
                    P.UpdatedAt
                from
                    Projects P
                INNER JOIN Locations L
                on P.LocationId = L.Id
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
                    P.Id, P.Number, P.Title, L.Name as Location, P.CreatedAt, 
                    P.UpdatedAt
                from
                    Projects P
                INNER JOIN Locations L
                on L.Id = P.LocationId
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
                    P.Id, P.Number, P.Title, L.Name as Location, P.CreatedAt, 
                    P.UpdatedAt
                from
                    Projects P
                INNER JOIN Locations L
                on L.Id = P.LocationId
                where
                    P.Title = @Title
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryFirstOrDefaultAsync<Project>(sql, new { Title = project });
        }

        public async Task<ProjectStatus> CreateAProject(ProjectCreate project)
        {
            var sql = @"
                declare @n int;
				set @n = YEAR(@FromDate);
				declare @pid int;

				insert into Projects 
                    (Number, Title, LocationId)
                values 
                    (@Number, @Title,
                    (select Id from Locations where Name = @Location));
                set @pid = (select cast(scope_identity() as int));

				WHILE @n <= YEAR(@ToDate)
				BEGIN
				insert into ProjectStatus
                (Id, FromDate, ToDate, Status, Year, Jan, Feb, Mar, Apr, May,
                Jun, Jul, Aug, Sep, Oct, Nov, Dec)
                values(@pid,
                @FromDate, @ToDate, 'Active', @n, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0, 0);
				set @n = @n+1;
				END
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new
            {
                project.Number,
                project.Title,
                project.Location,
                project.FromDate,
                project.ToDate
            });
            return await GetActivatedProjectsWhere(project.Title);
        }

        public async Task<Project> UpdateAProject(Project project)
        {
            var sql = @"
                update
                    Projects
                set 
                    Number = @Number,
                    Title = @Title,
                    LocationId = (select Id from Locations where Name = @Location),
                    UpdatedAt = SYSUTCDATETIME()
                where 
                    Id = @Id;                
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new
            {
                project.Id,
                project.Number,
                project.Title,
                project.Location,
            });
            return project;
        }

        public async Task<ProjectStatus> UpdateProjectStatus(string project, UserUtil uu)
        {
            var sql = @"";
            if (uu.Jan != 0)
                sql += "update ProjectStatus set " +
                    "Jan = @Jan where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.Feb != 0)
                sql += "update ProjectStatus set " +
                    "Feb = @Feb where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.Mar != 0)
                sql += "update ProjectStatus set " +
                    "Mar = @Mar where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.Apr != 0)
                sql += "update ProjectStatus set " +
                    "Apr = @Apr where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.May != 0)
                sql += "update ProjectStatus set " +
                    "May = @May where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.Jun != 0)
                sql += "update ProjectStatus set " +
                    "Jun = @Jun where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.Jul != 0)
                sql += "update ProjectStatus set " +
                    "Jul = @Jul where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.Aug != 0)
                sql += "update ProjectStatus set " +
                    "Aug = @Aug where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.Sep != 0)
                sql += "update ProjectStatus set " +
                    "Sep = @Sep where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.Oct != 0)
                sql += "update ProjectStatus set " +
                    "Oct = @Oct where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.Nov != 0)
                sql += "update ProjectStatus set " +
                    "Nov = @Nov where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            if (uu.Dec != 0)
                sql += "update ProjectStatus set " +
                    "Dec = @Dec where Id = " +
                    "(select Id from Projects where Title = @Project)" +
                    " and Year = @Year; \n";
            sql += "update Projects " + "set UpdatedAt = SYSUTCDATETIME()" +
                "where Id = (select Id from Projects where Title = @Project);";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new
            {
                Project = project,
                uu.Year,
                uu.Jan,
                uu.Feb,
                uu.Mar,
                uu.Apr,
                uu.May,
                uu.Jun,
                uu.Jul,
                uu.Aug,
                uu.Sep,
                uu.Oct,
                uu.Nov,
                uu.Dec
            });
            return await GetActivatedProjectsWhere(project);
        }

        public async Task<Project> DeleteAProject(string project)
        {
            var pt = await GetAProjectWithTitle(project);
            var sql = @"
                delete from ProjectStatus
                    where Id = (select Id from Projects where Title = @Project);
                delete from Projects where Title = @Project;
                delete from UserHours where ProjectId = (select Id from Projects
                where Title = @Project)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { project });
            return pt;
        }
        public async Task<IEnumerable<ProjectStatus>> CheckAProject(string project)
        {
            var sql = @"
                select P.Title as Project, PS.FromDate, PS.ToDate, PS.Status
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
                select DISTINCT P.Title as Project, L.Name as Location,
                PS.FromDate, PS.ToDate, P.UpdatedAt, PS.Status
                from ProjectStatus PS
                INNER JOIN Projects P
                on P.Id = PS.Id
                INNER JOIN Locations L
                on P.LocationId = L.Id
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<ProjectStatus>(sql, new
            {
            });
        }

        public async Task<IEnumerable<Project>> GetDeactivatedProjects()
        {
            var sql = @"
                select P.Id, Number, L.Name as Location, CreatedAt, UpdatedAt
                from Projects P
                INNER JOIN 
                Locations L
                on L.Id = P.LocationId
                WHERE P.Id NOT IN (select DISTINCT Id from ProjectStatus);
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<Project>(sql, new
            {
            });
        }

        public async Task<ProjectStatus> GetActivatedProjectsWhere(string project)
        {
            var sql = @"
                select TOP 1 P.Title as Project, L.Name as Location,
                PS.FromDate, PS.ToDate, P.UpdatedAt, PS.Status
                from ProjectStatus PS
                INNER JOIN Projects P
                on P.Id = PS.Id
                INNER JOIN Locations L
                on P.LocationId = L.Id
                where P.Title = @Project;
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryFirstOrDefaultAsync<ProjectStatus>(sql, new
            {
                Project = project
            });
        }
        public async Task<ProjectStatus> ActivateAProject(string project)
        {
            var sql = @"
                declare @n int;
				set @n = YEAR(@FromDate);
				declare @pid int;
                set @pid = (select Id from Projects where Title = @Title)

				WHILE @n <= YEAR(@ToDate)
				BEGIN
				insert into ProjectStatus
                (Id, FromDate, ToDate, Status, Year, Jan, Feb, Mar, Apr, May,
                Jun, Jul, Aug, Sep, Oct, Nov, Dec)
                values(@pid,
                @FromDate, @ToDate, 'Active', @n, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0, 0);
				set @n = @n+1;
				END
                
                update Projects
                set UpdatedAt = SYSUTCDATETIME()
                where Title = @Title
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { Title = project });
            return await GetActivatedProjectsWhere(project);
        }

        public async Task<IEnumerable<Years>> GetYearsOfProject(string project)
        {
            var sql = @"
                declare @table table (years int);
                declare @fy int;
                declare @ty int;
                declare @tempy int;

                set @fy = YEAR((select Top 1 FromDate from ProjectStatus where
                        Id = (select Id from Projects where Title = @Title)));
                set @ty = YEAR((select Top 1 ToDate from ProjectStatus where
                        Id = (select Id from Projects where Title = @Title)));
                set @tempy = @fy;
                WHILE @tempy <= @ty
                BEGIN
                insert into @table
                (years)
                values (@tempy)
                set @tempy = @tempy + 1;
                END
                select years as year from @table
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();

            return await connection.QueryAsync<Years>(sql, new { Title = project });
        }

        public async Task<IEnumerable<ProjectStatus>> DeactivateAProject(string project)
        {
            var pr = await CheckAProject(project);
            var sql = @"
                delete * from ProjectStatus
                where Id = (select Id from Projects where Title = @Title); 

                update Projects
                set UpdatedAt = SYSUTCDATETIME()
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
                update Projects
                set UpdatedAt = SYSUTCDATETIME()
                where Title = @Project;
            ";
            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new
            {
                Project = project,
                Year = year,
                month = hr.Month,
                Hours = hr.Hours
            });
            return await CheckAProject(project);
        }

        public async Task<ProjectStatus> PatchStatus(string project, string status)
        {
            var sql = @"
                update ProjectStatus
                set Status = @Status
                where Id = (select Id from Projects where Title = @Title);

                update Projects
                set UpdatedAt = SYSUTCDATETIME()
                where Title = @Title;
            ";
            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { Title = project, Status = status });
            return await GetActivatedProjectsWhere(project);
        }


    }
}
