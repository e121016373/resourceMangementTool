using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class UsersRepository : IUsersRepository
    {
        private readonly string connectionString = string.Empty;

        public UsersRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        public List<User> GetAllUsers()
        {
            var sql = @"
                select
                    Id, FirstName, LastName, Username, LocationId
                from
                    Users
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection.Query<User>(sql).ToList();
        }

        public User GetAUser(string username)
        {
            var sql = @"
                select
                    Id, FirstName, LastName, Username, LocationId
                from
                    Users
                where 
                    Username = @Username
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection.QueryFirstOrDefault<User>(sql, new { Username = username });
        }
    }
}
