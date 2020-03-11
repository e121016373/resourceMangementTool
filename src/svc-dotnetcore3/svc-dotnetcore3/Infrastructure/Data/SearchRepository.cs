using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Web.API.Application.Models;
using Web.API.Application.Repository;

namespace Web.API.Infrastructure.Data
{
    public class SearchRepository : ISearchRepository
    {
        private readonly string connectionString = string.Empty;

        public SearchRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        //return a list of user based on discipline, skill, and location
        //TODO fix year, dateRange, availability
        public async Task<IEnumerable<User>> GetAllUsers(Search search)
        {
            var sql = @"
                SELECT DISTINCT
                    U.Id, U.FirstName, U.LastName, U.Type
                FROM 
                    UserWorksDiscipline UWD, 
                    Users U, 
                    UserHasSkills UHS, 
                    Locations L, 
                    Disciplines D, 
                    Skills S
                WHERE 
                    UWD.UserId = U.Id
                    AND UHS.UserId = U.Id
                    AND L.Id = U.LocationId
                    AND UWD.DisciplineId = D.Id
                    AND S.Id = UHS.SkillId
                    AND D.Name = @Discipline
                    AND S.Name = @Skill
                    AND L.Name = @Location
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<User>(sql, new {
                search.Discipline,
                search.Skill,
                search.Location,
            });
        }
    }
}
