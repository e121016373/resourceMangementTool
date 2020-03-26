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

        //return a list of user based on discipline, skill, location, year, availability in a given date range
        public async Task<IEnumerable<User>> GetAllUsers(Search search)
        {
            var sql = @"
                SELECT DISTINCT
                    U.Id, U.FirstName, U.LastName, U.Username, L.Name AS 'Location', U.Type
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
                    AND S.DisciplineId = D.Id";

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
            if (search.FromDate != null && search.ToDate != null && search.Availability != 0) {
                int month_diff = ((search.ToDate.Year - search.FromDate.Year) * 12) + search.ToDate.Month - search.FromDate.Month;
                int year = search.FromDate.Year;
                int month = search.FromDate.Month;
                sql += @" 
                    AND U.Id IN (SELECT UH.UserId
                        FROM UserHours UH
                        GROUP BY UH.UserId, UH.Year, UH.Month
                        HAVING CONVERT(FLOAT, 1-SUM(UH.Hours/176.0)) >= CONVERT(FLOAT, @Availability/100.0)";
                
                sql += " AND ((UH.Year = " + year.ToString() + "AND UH.Month =" + month.ToString() + ")";
                month++;
                for (int i = 0; i < month_diff; i++) {
                    if (month >= 13) {
                        year += 1;
                        month = 1;
                    }
                    sql += " OR (UH.Year = " + year + " AND UH.Month = " + month + ")";
                    month++;
                }
                sql += "))";
            }
            sql += ";";
            

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<User>(sql, new {
                search.Discipline,
                search.Skill,
                search.Location,
                search.YearOfExperience,
                search.FromDate,
                search.ToDate,
                search.Availability
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
