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
                select DISTINCT P.Title as Project, L.Name as Location, PS.FromDate,  
                    PS.ToDate, P.UpdatedAt, PS.status as Status 
                    from UserHours UP
                    INNER JOIN Projects P
                    on UP.ProjectId = P.Id 
					INNER JOIN Locations L
					on P.LocationId = L.Id
                    INNER JOIN ProjectStatus PS
                    on PS.Id = P.Id
                    and PS.status = 'Active'

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
                select Top 1 P.Title as Project, L.Name as Location, PS.FromDate, PS.ToDate, 
                P.UpdatedAt, PS.Status as Status 
                    from UserHours UP
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
            return await connection.QueryFirstOrDefaultAsync<UserProject>(sql, new { Username = username, Project = project });
        }
        public async Task<UserProject> CreateProject(string username, string project)
        {
            var sql = @"
            declare @pid int;
			declare @uid int;
			declare @fd datetime;
			declare @td datetime;
			declare @fm int;
			declare @fy int;
			declare @tm int;
			declare @ty int;
			declare @tempm int;
			declare @tempy int;

			set @pid = (select Id from Projects where 
			Title = @Project);
			set @uid = (select Id from Users where Username = @Username);
			
			set @fd = (select DISTINCT FromDate from ProjectStatus where Id = @pid);
			set @td = (select DISTINCT ToDate from ProjectStatus where Id = @pid);
			set @fy = YEAR(@fd);
			set @fm = MONTH(@fd);
			set @ty = YEAR(@td);
			set @tm = MONTH(@td);
			set @tempy = @fy;
			set @tempm = @fm;
			
			WHILE @tempm <= @tm and @tempy <= @ty
			BEGIN
			INSERT INTO UserHours
			(UserId, ProjectId, Year, Month, Hours)
			values (@uid, @pid, @tempy, @tempm, 0);
			if @tempm = 12
			BEGIN
				set @tempm = 1;
				set @tempy = @tempy+1;
			END
			else
				set @tempm = @tempm + 1;
			END;
            
            update Projects
            set UpdatedAt = SYSUTCDATETIME()
            where Id = @pid
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new
            {
                Username = username,
                Project = project
            }) ;
            return await GetAProject(username, project);
        }
        public async Task<UserProject> DeleteProject(string username, string project)
        {
            var proj = await GetAProject(username, project);
            var sql = @"
                delete from UserHours
                where ProjectId = (select Id from Projects where Title = @Project)
                and UserId = (select Id from Users where Username = @Username)
                
                update Projects
                set UpdatedAt = SYSUTCDATETIME()
                where Id = (select Id from Projects where Title = @Project)
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
        public async Task<UserProject> UpdateProject(string username, string project, int year, Hour hr)
        {
            var sql = @"
                declare @m int;
				set @m = 0;
                if @Months = 'jan'
                    set @m = 1;
                if @Months = 'feb'
                    set @m = 2;
                if @Months = 'mar'
                    set @m = 3;
                if @Months = 'apr'
                    set @m = 4;
                if @Months = 'may'
                    set @m = 5;
                if @Months = 'jun'
                    set @m = 6;
                if @Months = 'jul'
                    set @m = 7;
                if @Months = 'aug'
                    set @m = 8;
                if @Months = 'sep'
                    set @m = 9;
                if @Months = 'oct'
                    set @m = 10;
                if @Months = 'nov'
                    set @m = 11;
                if @Months = 'dec'
                    set @m = 12;
				update UserHours
                set Hours = @Hours 
                where UserId = (select Id from Users where Username = @Username)
                and ProjectId = 7
                and Year = @Year and Month = @m;

                update Projects
                set UpdatedAt = SYSUTCDATETIME()
                where Id = (select Id from Projects where Title = @Project)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new
            {
                Username = username,
                Project = project,
                Months = hr.Month,
                Year = year,
                Hours = hr.Hours
            });
            return await GetAProject(username, project);

        }
    }
}
