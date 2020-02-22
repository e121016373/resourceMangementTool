using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class DisciplinesRepository : IDisciplinesRepository
    {
        private readonly string connectionString = string.Empty;

        public DisciplinesRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        public async Task<IEnumerable<Discipline>> GetAllDisciplines()
        {
            var sql = @"
                SELECT Id, Name
                FROM dbo.Disciplines
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<Discipline>(sql);
        }

    }
}
