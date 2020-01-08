using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class LocationsRepository : ILocationsRepository
    {
        private readonly string connectionString = string.Empty;

        public LocationsRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        public List<Location> GetAllLocations()
        {
            var sql = @"
                select
                    Id, Code, [Name], Restricted, [Enabled]
                from
                    Locations
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection.Query<Location>(sql).ToList();
        }

        public Location GetALocation(string locationCode)
        {
            var sql = @"
                select
                    Id, Code, [Name], Restricted, [Enabled]
                from
                    Locations
                where 
                    Code = @Code
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection.QueryFirstOrDefault<Location>(sql, new { Code = locationCode });
        }
    }
}
