using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class SkillsRepository : ISkillsRepository
    {
        private readonly string connectionString = string.Empty;

        public SkillsRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        public async Task<IEnumerable<Skill>> GetAllSkills()
        {
            var sql = @"
                SELECT D.Id AS Discipline_Id, D.Name AS Discipline, S.Id AS Skill_Id, S.Name AS Skill
                FROM dbo.Disciplines D
	                INNER JOIN dbo.Skills S ON S.DisciplineId = D.Id
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<Skill>(sql);
        }

    }
}
