using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class SDRepository : ISDRepository
    {
        private readonly string connectionString = string.Empty;

        public SDRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        public async Task<IEnumerable<UserSD>> GetASD(string username)
        {
            var sql = @"
                select Username, S.Name as Skill, D.Name as Discipline
                from Users
                INNER JOIN UserHasSkills USD
                 on USD.UserId = Users.Id
                INNER JOIN Skills S
                 on S.DisciplineId = USD.DisciplineId
                AND S.Id = USD.SkillId
                INNER JOIN Disciplines D
                 on D.Id = USD.DisciplineId
                WHERE Username = @Username
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<UserSD>(sql, new { username });
        }


        public async Task<UserSD> CreateASD(UserSD usd)
        {
            var sql = @"
                insert into UserHasSkills 
                    (UserId, DisciplineId, SkillId)
                values 
                    ((select Id from Users where Username = @Username),
                     (select Id from Disciplines where Disciplines.Name = @Discipline),
                     (select Id from Skills where Skills.Name = @Skill))
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            var id = await connection.QuerySingleAsync<string>(sql, new
            {
                Username = usd.Username,
                Discipline = usd.Discipline,
                Skill = usd.Skill

            });
            usd.Username = id;
            return usd;
        }

        public async Task<IEnumerable<UserSD>> DeleteAS(string username, string skill)
        {
            var usd = await GetASD(username);
            var sql = @"
                delete from UserHasSkills
                    where UserId = (select Id from Users where Username = @Username)
                        AND SkillId = (select Id from Skills where Name = @Skill)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { username, skill });
            return usd;
        }

        public async Task<IEnumerable<UserSD>> DeleteAD(string username, string discipline)
        {
            var usd = await GetASD(username);
            var sql = @"
                delete from UserHasSkills
                    where UserId = (select Id from Users where Username = @Username)
                        AND DisciplineId = (select Id from Disciplines where Name = @Discipline)
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { username, discipline });
            return usd;
        }

        public async Task<IEnumerable<UserSD>> UpdateASD(UserSD usd)
        {
            var sql = @"
                update UserHasSkills
                    set SkillId = (select Id from Skills where Name = @Skill),
                        DisciplineId = (select Id from Disciplines where Name = @Discipline)
                    where UserId = (select Id from Users where Username = @Username)    
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            await connection.ExecuteAsync(sql, new { Skill = usd.Skill, Discipline = usd.Discipline, Username = usd.Username });
            return await GetASD(usd.Username);
        }
    }
}
