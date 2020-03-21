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
        public async Task<IEnumerable<Skill>> GetAUserSkills(string username, string discipline)
        {
            var sql = @"
                SELECT Id, DisciplineId, Name
                FROM Skills
                where Id in (select SkillId from UserHasSkills where 
                            UserId = (select Id from Users where Username = @Username)) and
                DisciplineId = (select Id from Disciplines where Name = @Discipline)
      
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<Skill>(sql, new { Username = username, Discipline = discipline});
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

        public async Task<Skill> UpdateASkill(Skill skill)
        {
            var sql = @"
                UPDATE Skills
                SET Name = @Name
                WHERE Id = @Id 
                    AND DisciplineId = @DisciplineId
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            int result = await connection.ExecuteAsync(sql, new
            {
                skill.Id,
                skill.DisciplineId,
                skill.Name
            });
            return result == 1 ? skill : null;
        }

        public async Task<Skill> AddASkill(Skill skill)
        {
            var sql = @"
                INSERT INTO Skills ([Name], [DisciplineId])
                VALUES (@Name, @DisciplineId);

                SELECT cast(scope_identity() as int);
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var id = await connection.QuerySingleAsync<int>(sql, new
            {
                skill.DisciplineId,
                skill.Name
            });
            skill.Id = id;
            return skill;
        }

        public async Task<Skill> DeleteASkill(string name)
        {
            var skill = await GetASkill(name);
            var sql = @"
                DELETE FROM Skills
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
