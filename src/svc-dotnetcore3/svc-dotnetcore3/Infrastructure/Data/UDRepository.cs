using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class UDRepository : IUDRepository
    {
        private readonly string connectionString = string.Empty;

        public UDRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        
        public async Task<IEnumerable<UserDiscipline>> GetDiscipline(string username)
        {
            var sql = @"
                select D.Name as Discipline, UWD.Year as YOE
                    from UserWorksDiscipline UWD
                    INNER JOIN Disciplines D
                    on UWD.DisciplineId = D.Id

                where UWD.UserId = 
                  (select Id from Users where Username = @Username)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<UserDiscipline>(sql, new { Username = username });
        }

    }
}
