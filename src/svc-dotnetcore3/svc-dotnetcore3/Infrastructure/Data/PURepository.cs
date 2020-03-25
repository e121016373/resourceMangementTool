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
                declare @pid int;
                set @pid = (select Id from Projects where Title = @Project);
                select U.Username,
                cast(jan/cast((select jan from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as jan,
                cast(feb/cast((select feb from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as feb,
                cast(mar/cast((select mar from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as mar,
                cast(apr/cast((select apr from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as apr,
                cast(may/cast((select may from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as may,
                cast(jun/cast((select jun from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as jun,
                cast(jul/cast((select jul from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as jul,
                cast(aug/cast((select aug from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as aug,
                cast(sep/cast((select sep from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as sep,
                cast(oct/cast((select oct from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as oct,
                cast(nov/cast((select nov from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as nov,
                cast(dec/cast((select dec from ProjectStatus2 where Id = @pid and Year = @yr)as float) as float) as dec
                from UserInProjects3
                INNER JOIN
                Users U on U.Id = UserInProjects3.UserId
                where ProjectId = @pid and Year = @yr
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<ProjectUtil>(sql, new { Project = project, yr = year });
        }

    }
}
