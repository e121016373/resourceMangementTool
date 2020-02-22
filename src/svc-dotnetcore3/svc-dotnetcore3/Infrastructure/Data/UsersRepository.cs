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
                    Id, FirstName, LastName, Username, LocationId
                from
                    Users
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<User>(sql);
        }

        public async Task<User> GetAUser(string username)
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
            return await connection.QueryFirstOrDefaultAsync<User>(sql, new { Username = username });
        }
       
        // TODO multiple queries
        public async Task<User> UpdateAUser(string firstName, string lastName, string username, string location, string type)
        {
            var sql = @"
                DECLARE @LID INT
                SET @LID = (
                    SELECT Id
                    FROM [dbo].[Locations]
                    WHERE Name = @Location
                )

                UPDATE [dbo].[Users]
                SET FirstName = @FirstName,
                    LastName = @LastName,
                    LocationId = @\@LID,
                    Type = @Type
                WHERE
                    [dbo].[Users].Username = @Username
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var param = new { 
                FirstName = firstName, 
                LastName = lastName, 
                Username = username, 
                Location = location,
                Type = type 
            };
            return await connection.QueryFirstOrDefaultAsync<User>(sql, param);
        }
        //TODO multiple queries
        public async Task<User> AddAUser(string firstName, string lastName, string username, string location, string type)
        {
            var sql = @"
                DECLARE @LID INT
                SET @LID = (
                    SELECT Id
                    FROM [dbo].[Locations]
                    WHERE Name = @Location
                )

                INSERT [dbo].[Users] ([FirstName], [LastName], [Username], [LocationId], [Type])
                VALUES (@FirstName, @LastName, @Username, \@LID, @Type)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var param = new { 
                FirstName = firstName, 
                LastName = lastName, 
                Username = username, 
                Location = location,
                Type = type 
            };
            return await connection.QueryFirstOrDefaultAsync<User>(sql, param);
        }

        public async Task<User> RemoveAUser(string username)
        {
            var sql = @"
                DELETE FROM [dbo].[Users]
                WHERE Username = @Username
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var param = new { 
                Username = username, 
            };
            return await connection.QueryFirstOrDefaultAsync<User>(sql, param);
        }

        
    }
}
