﻿using Web.API.Application.Models;
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
                    P.Id, P.Number, P.Title, L.Name as Location, P.CreatedAt, 
                    P.UpdatedAt
                from
                    Projects P
                INNER JOIN Locations L
                on L.Id = P.LocationId
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

        public async Task<ProjectCreate> CreateAProject(ProjectCreate project)
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
            await connection.ExecuteAsync(sql, new {
                project.Number,        
                project.Title,
                project.Location,
                project.FromDate,
                project.ToDate
            });
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

        public async Task<IEnumerable<ProjectStatus>> GetActivatedProjectsWhere(string project)
        {
            var sql = @"
                select DISTINCT P.Title as Project, L.Name as Location, PS.FromDate, PS.ToDate, P.UpdatedAt, PS.Status, PS.Year,
                PS.Jan, PS.Feb, PS.Mar, PS.Apr, PS.May, PS.Apr, PS.Jun, PS.Jul, PS.Aug,
                PS.Sep, PS.Oct, PS.Nov, PS.Dec
                from ProjectStatus PS
                INNER JOIN Projects P
                on P.Id = PS.Id
                INNER JOIN Locations L
                on L.Id = P.LocationId
                where P.Title = @Project;
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<ProjectStatus>(sql, new
            {
                Project = project
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
                set UpdatedAt = SYSUTCDATETIME()
                where Title = @Title
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { Title = ps.Project,
            ps.FromDate, ps.ToDate, ps.Status});
            return ps;
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
            await connection.ExecuteAsync(sql, new { Project = project, Year = year,
            month = hr.Month, Hours = hr.Hours});
            return await CheckAProject(project);
        }


    }
}
