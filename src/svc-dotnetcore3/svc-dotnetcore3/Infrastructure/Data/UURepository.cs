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
                declare @table table(ProjectId int, year int, jan int, feb int, mar int, apr int,
                may int, jun int, jul int, aug int, sep int, oct int, nov int,
                dec int);
                insert into @table
                select DISTINCT UP.ProjectId, UP.year, UP.jan, UP.feb, UP.mar, UP.apr, UP.may, UP.jun, UP.jul,
                UP.aug, UP.sep ,UP.oct, UP.nov, UP.dec
                from UserInProjects3 UP
                INNER JOIN
                ProjectStatus2 PS
                on PS.Id = UP.ProjectId
                and PS.Status = 'Active'
                where UserId = (select Id from Users where Username = @Username)

                select year, cast(sum(jan)/176.0 as float) as jan,
                             cast(sum(feb)/176.0 as float) as feb,
                             cast(sum(mar)/176.0 as float)as mar,
                             cast(sum(apr)/176.0 as float) as apr,
                             cast(sum(may)/176.0 as float)as may,
                             cast(sum(jun)/176.0 as float) as jun,
                             cast(sum(jul)/176.0 as float) as jul,
                             cast(sum(aug)/176.0 as float)as aug, 
                             cast(sum(sep)/176.0 as float)as sep,
                             cast(sum(oct)/176.0 as float)as oct,
                             cast(sum(nov)/176.0 as float)as nov,
                             cast(sum(dec)/176.0 as float)as dec
                from @table
                group by year
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<UserUtil>(sql, new { Username = username });
        }

    }
}
