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
    public class UsersRepository : IUsersRepository
    {
        private readonly IDbConnection connection;
        private readonly string connectionString = string.Empty;

        public UsersRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
            this.connection = new SqlConnection(this.connectionString);
        }

        public Task<IEnumerable<User>> GetAllUsers()
        {
            var sql = @"
                select
                    Id, FirstName, LastName, Username, LocationId
                from
                    Users
            ;";

            return connection.QueryAsync<User>(sql);
        }

        public Task<User> GetAUser(string username)
        {
            var sql = @"
                select
                    Id, FirstName, LastName, Username, LocationId
                from
                    Users
                where 
                    Username = @Username
            ;";

            return connection.QueryFirstOrDefaultAsync<User>(sql, new { Username = username });
        }
    }
}
