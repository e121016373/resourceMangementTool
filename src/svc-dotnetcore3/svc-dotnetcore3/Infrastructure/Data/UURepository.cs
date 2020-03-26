using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class UURepository : IUURepository
    {
        private readonly string connectionString = string.Empty;

        public UURepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }


        public async Task<IEnumerable<UserUtil>> GetUserUtil(string username)
        {
            var sql = @"
                declare @table table (year int,  month int, hours int);
                insert into @table
                 select UP.year, UP.month, coalesce(UP.hours, 0) as hours
                    from UserHours UP
                    INNER JOIN
                    ProjectStatus2 PS
                    on PS.Id = UP.ProjectId
                 and PS.Status = 'Active'
                 where UP.UserId = (select Id from Users where Username = @Username) and
				    (UP.Year = YEAR(GETDATE()) or UP.Year = YEAR(GETDATE()) + 1);

                Select year, [1]/176.0 as jan, [2]/176.0 as feb, [3]/176.0 as mar, [4]/176.0 as apr,
                [5]/176.0 as may, [6]/176.0 as jun, [7]/176.0 as jul, [8]/176.0 as aug, [9]/176.0 as sep,
                [10]/176.0 as oct, [11]/176.0 as nov, [12]/176.0 as dec
                FROM
                (select year, month, coalesce(hours, 0) as hours from @table) AS SourceTable
                PIVOT (
	            sum(hours)
	            for month in ([1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12])
                ) AS PivotTable;
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<UserUtil>(sql, new { Username = username });
        }

        public async Task<IEnumerable<UserUtil>> GetProjectData(string project)
        {
            var sql = @"
                select DISTINCT UP.year, UP.jan, UP.feb, UP.mar, UP.apr, UP.may,
                UP.jun, UP.jul, UP.aug, UP.sep ,UP.oct, UP.nov, UP.dec
                from ProjectStatus2 UP
                where Id = (select Id from Projects where Title = @Project)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<UserUtil>(sql, new { Project = project });
        }

    }
}
