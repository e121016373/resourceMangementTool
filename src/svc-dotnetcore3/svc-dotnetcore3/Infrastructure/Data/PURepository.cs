using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class PURepository : IPURepository
    {
        private readonly string connectionString = string.Empty;

        public PURepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        
        public async Task<IEnumerable<ProjectUtil>> GetProjectUtil(string project, int year)
        {
            var sql = @"
                declare @table table (UserId int,  month int, hours int);
				declare @pid int;
                set @pid = (select Id from Projects where Title = @Project);
                insert into @table
                 select UP.UserId,  UP.month, coalesce(UP.hours, 0) as hours
                    from UserHours UP
                 where UP.ProjectId  = @pid and
				    Year = @yr;
					Select Username,   
					ISNULL([1]/cast((select jan from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as jan,
					ISNULL([2]/cast((select feb from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as feb,
					ISNULL([3]/cast((select mar from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as mar,
					ISNULL([4]/cast((select apr from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as apr,
					ISNULL([5]/cast((select may from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as may,
					ISNULL([6]/cast((select jun from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as jun,
					ISNULL([7]/cast((select jul from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as jul,
					ISNULL([8]/cast((select aug from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as aug,
					ISNULL([9]/cast((select sep from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as sep,
					ISNULL([10]/cast((select oct from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as oct,
					ISNULL([11]/cast((select nov from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as nov,
					ISNULL([12]/cast((select dec from ProjectStatus2 where Id = @pid and Year = @yr)as float), 0) as dec
				FROM
                (select U.Username as Username,  month, coalesce(hours, 0) as hours from @table T  INNER JOIN Users U on U.Id = T.UserId) AS SourceTable 
                PIVOT (
	            sum(hours)
	            for month in ([1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12])
                ) AS PivotTable
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<ProjectUtil>(sql, new { Project = project, yr = year });
        }

    }
}
