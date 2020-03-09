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

        public async Task<Discipline> GetADiscipline(string name)
        {
            var sql = @"
                SELECT Id, Name
                FROM Disciplines
                WHERE Name = @Name
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryFirstOrDefaultAsync<Discipline>(sql, new { Name = name });
        }
       
        public async Task<Discipline> UpdateADiscipline(Discipline discipline)
        {
            var sql = @"
                UPDATE Disciplines
                SET Name = @Name
                WHERE Id = @Id
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            int result = await connection.ExecuteAsync(sql, new
            {
                discipline.Id,
                discipline.Name
            });
            return result == 1 ? discipline : null;
        }

        public async Task<Discipline> AddADiscipline(Discipline discipline)
        {
            var sql = @"
                INSERT INTO Disciplines ([Name])
                VALUES (@Name);
                SELECT cast(scope_identity() as int);
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var param = new { 
                discipline.Name
            };
            var id = await connection.QuerySingleAsync<int>(sql, param);
            discipline.Id = id;
            return discipline;
        }

        public async Task<Discipline> DeleteADisicipline(string name)
        {
            var discipline = await GetADiscipline(name);
            var sql = @"
                DELETE FROM Disciplines
                WHERE Name = @Name
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var param = new { 
                Name = name, 
            };
            await connection.ExecuteAsync(sql, param);
            return discipline;
        }

    }
}
