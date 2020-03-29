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
                declare @table2 table (Username nvarchar(max), jan int, feb int, mar int, apr int, may int, jun int,
                jul int, aug int, sep int, oct int, nov int, dec int);

                insert into @table2
                select 'Total', jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec from ProjectStatus where Id = @pid and year = @yr;

                insert into @table2
					Select Username,   
					ISNULL([1], 0) as jan,
					ISNULL([2], 0) as feb,
					ISNULL([3], 0) as mar,
					ISNULL([4], 0) as apr,
					ISNULL([5], 0) as may,
					ISNULL([6], 0) as jun,
					ISNULL([7], 0) as jul,
					ISNULL([8], 0) as aug,
					ISNULL([9], 0) as sep,
					ISNULL([10], 0) as oct,
					ISNULL([11], 0) as nov,
					ISNULL([12], 0) as dec
				FROM
                (select U.Username as Username,  month, coalesce(hours, 0) as hours from @table T  INNER JOIN Users U on U.Id = T.UserId) AS SourceTable 
                PIVOT (
	            sum(hours)
	            for month in ([1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12])
                ) AS PivotTable;
                insert into @table2
                select 'Required Resource',
                (select TOP 1 jan from @table2) - sum(CASE WHEN Username != 'Total' THEN jan ELSE 0 END) as jan,
                (select TOP 1 feb from @table2) - sum(CASE WHEN Username != 'Total' THEN feb ELSE 0 END) as feb,
                (select TOP 1 mar from @table2) - sum(CASE WHEN Username != 'Total' THEN mar ELSE 0 END) as mar,
                (select TOP 1 apr from @table2) - sum(CASE WHEN Username != 'Total' THEN apr ELSE 0 END) as apr,
                (select TOP 1 may from @table2) - sum(CASE WHEN Username != 'Total' THEN may ELSE 0 END) as may,
                (select TOP 1 jun from @table2) - sum(CASE WHEN Username != 'Total' THEN jun ELSE 0 END) as jun,
                (select TOP 1 jul from @table2) - sum(CASE WHEN Username != 'Total' THEN jul ELSE 0 END) as jul,
                (select TOP 1 aug from @table2) - sum(CASE WHEN Username != 'Total' THEN aug ELSE 0 END) as aug,
                (select TOP 1 sep from @table2) - sum(CASE WHEN Username != 'Total' THEN sep ELSE 0 END) as sep,
                (select TOP 1 oct from @table2) - sum(CASE WHEN Username != 'Total' THEN oct ELSE 0 END) as oct,
                (select TOP 1 nov from @table2) - sum(CASE WHEN Username != 'Total' THEN nov ELSE 0 END) as nov,
                (select TOP 1 dec from @table2) - sum(CASE WHEN Username != 'Total' THEN dec ELSE 0 END) as dec
                from @table2

                select * from @table2;
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<ProjectUtil>(sql, new { Project = project, yr = year });
        }

    }
}
