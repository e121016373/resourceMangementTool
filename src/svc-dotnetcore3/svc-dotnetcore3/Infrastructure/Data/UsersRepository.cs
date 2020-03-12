using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
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

        public async Task<IEnumerable<User>> GetAllUsers()
        {
            var sql = @"
                select
                    U.Id, U.FirstName, U.LastName, U.Username, L.Name as Location, U.Type
                from
                    Users U
                INNER JOIN Locations L
                    on L.Id = U.LocationId
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<User>(sql);
        }

        public async Task<User> GetAUser(string username)
        {
            var sql = @"
                select
                    U.Id, U.FirstName, U.LastName, U.Username, L.Name as Location, U.Type
                from
                    Users U
                INNER JOIN Locations L
                    on L.Id = U.LocationId
                where 
                    Username = @Username
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryFirstOrDefaultAsync<User>(sql, new { Username = username });
        }

        public async Task<User> CreateAUser(User user)
        {
            var sql = @"
                insert into Users 
                    (Id, FirstName, LastName, Username, LocationId, Type)
                values 
                    (@Id, @FirstName, @LastName, @Username, 
                    (select Id from Locations where Name = @Location), @Type);
                select cast(scope_identity() as int);
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var id = await connection.QuerySingleAsync<int>(sql, new
            {
                user.Id,
                user.FirstName,
                user.LastName,
                user.Username,
                user.Location,
                user.Type

            });
            user.Id = id;
            return user;
        }

        public async Task<User> DeleteAUser(string username)
        {
            var user = await GetAUser(username);
            var sql = @"
                delete from Users where Username = @Username
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { username });
            return user;
        }

        public async Task<User> UpdateAUser(User user)
        {
            var sql = @"
                update Users
                set LocationID = (select Id from Locations where Name = @Location),
                    Type = @Type
                where Username = @Username;
            ";
            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { user.Location, user.Type, user.Username });
            return await GetAUser(user.Username);
        }
    }
}
