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
                SELECT Id, DisciplineId, Name
                FROM Skills
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<Skill>(sql);
        }

        public async Task<Skill> GetASkill(string name)
        {
            var sql = @"
                SELECT Id, DisciplineId, Name
                FROM Skills
                WHERE Name = @Name
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryFirstOrDefaultAsync<Skill>(sql, new { Name = name });
        }

        public async Task<Skill> UpdateASkill(string oldName, string newName, string discipline)
        {
            var sql = @"
                DECLARE \@DisciplineId INT
                SET \@DisciplineId = (
                    SELECT Id
                    FROM Disciplines
                    WHERE Name = @Discipline
                )

                UPDATE Skills
                SET Name = @NewName, 
                    DisciplineId = \@DisciplineId
                WHERE Name = @OldName
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var param = new { 
                NewName = newName,
                OldName = oldName,
                Discipline = discipline
            };
            return await connection.QueryFirstOrDefaultAsync<Skill>(sql, param);
        }

        public async Task<Skill> AddASkill(string skillName, string disciplineName)
        {
            var sql = @"
                DECLARE \@DisciplineId INT
                SET \@DisciplineId = (
                    SELECT Id
                    FROM Disciplines
                    WHERE Name = @Discipline
                )

                INSERT INTO Skills ([Name], [DisciplineId])
                VALUES (@Name, @DisciplineId)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var param = new { 
                Name = skillName,
                Discipline = disciplineName
            };
            return await connection.QueryFirstOrDefaultAsync<Skill>(sql, param);
        }

        public async Task<Skill> DeleteASkill(string name)
        {
            var skill = await GetASkill(name);
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
            return skill;
        }

    }
}
