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
                select P.Title as Project, L.Name as Location, UP.FromDate, UP.ToDate, UP.Hours 
                    from UserInProjects UP
                    INNER JOIN Projects P
                    on UP.ProjectId = P.Id 
					INNER JOIN Locations L
					on P.LocationId = L.Id

                where UP.UserId = 
                  (select Id from Users where Username = @Username)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<UserProject>(sql, new { Username = username });
        }

    }
}
