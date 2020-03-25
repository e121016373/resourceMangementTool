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
                from UserInProjects3 where UserId = (Select Id from Users where
                Username = @Username)
                group by year;
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<UserUtil>(sql, new { Username = username });
        }

    }
}
