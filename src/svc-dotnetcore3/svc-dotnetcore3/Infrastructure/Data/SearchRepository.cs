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

        //return a list of user based on discipline, skill, location, and year
        //TODO fix dateRange, availability
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
                    AND S.Id = UHS.SkillId";

            if (search.Discipline != null) {
                sql += " AND D.Name = @Discipline";
            }
            if (search.Skill != null) {
                sql += " AND S.Name = @Skill";
            }
            if (search.Location != null) {
                sql += " AND L.Name = @Location";
            }
            if (search.YearOfExperience != null) {
                sql += " AND LTRIM(UWD.Year) = @YearOfExperience";
            }
            sql += ";";
            

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<User>(sql, new {
                search.Discipline,
                search.Skill,
                search.Location,
                search.YearOfExperience
            });
        }

        // return a list of projects from search
        public async Task<IEnumerable<Project>> GetAllProjects(Search search)
        {
            var sql = @"
                SELECT DISTINCT
                    P.Id, P.Number, P.Title, L.Name AS 'Location'
                FROM 
                    Projects P,
                    Locations L
                WHERE 
                    P.LocationId = L.Id";

            if (search.ProjectNumber != null) {
                sql += " AND P.Number = @ProjectNumber";                
            }
            if (search.ProjectTitle != null) {
                sql += " AND P.Title = @ProjectTitle";
            }
            if (search.Location != null) {
                sql += " AND L.Name = @Location";
            }
            sql += ";";            

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<Project>(sql, new {
                search.ProjectNumber,
                search.ProjectTitle,
                search.Location
            });
        }
    }
}
