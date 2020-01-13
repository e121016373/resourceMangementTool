using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class LocationsRepository : ILocationsRepository
    {
        private readonly IDbConnection connection;
        private readonly string connectionString = string.Empty;

        public LocationsRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
            this.connection = new SqlConnection(this.connectionString);
        }

        public Task<IEnumerable<Location>> GetAllLocations()
        {
            var sql = @"
                select
                    Id, Code, [Name]
                from
                    Locations
            ;";

            return connection.QueryAsync<Location>(sql);
        }

        public Task<Location> GetALocation(string locationCode)
        {
            var sql = @"
                select
                    Id, Code, [Name]
                from
                    Locations
                where 
                    Code = @Code
            ;";

            return connection.QueryFirstOrDefaultAsync<Location>(sql, new { Code = locationCode });
        }
    }
}
