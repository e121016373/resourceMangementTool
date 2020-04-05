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
        public async Task<IEnumerable<UserInSearch>> GetAllUsers(Search search)
        {
            var sql = @"
                SELECT *
                FROM (
                    SELECT DISTINCT
                        U.Id, U.FirstName, U.LastName, U.Username, L.Name AS 'Location', 
                        U.Type, D.Name AS 'Discipline', S.Name AS 'Skill', UWD.Year AS 'YOE'";

            if (search.FromDate != null && search.ToDate != null) {
                int month_diff = ((search.ToDate.Year - search.FromDate.Year) * 12) + search.ToDate.Month - search.FromDate.Month;
                int year = search.FromDate.Year;
                int month = search.FromDate.Month;     
                sql += ", (SELECT CONVERT(FLOAT, 1-SUM(UH.Hours/176.0/" + (month_diff + 1) + "))";
                sql += @" 
                    FROM UserHours UH
                    WHERE UH.UserId = U.Id";
                sql += " \nAND ((UH.Year = " + year + "AND UH.Month =" + month + ")";
                month++;
                for (int i = 0; i < month_diff; i++) {
                    if (month >= 13) {
                        year += 1;
                        month = 1;
                    }
                    sql += " \nOR (UH.Year = " + year + " AND UH.Month = " + month + ")";
                    month++;
                }
                sql += @"
                        ) 
                    GROUP BY UH.UserId) AS 'Availability'";
            }

            sql += @"
                    FROM 
                        Users U
                        LEFT JOIN UserWorksDiscipline UWD ON U.Id = UWD.UserId";

            if (search.Skill != null) {
                sql += " LEFT JOIN UserHasSkills UHS ON U.Id = UHS.UserId";
            } else {
                sql += @"
                    LEFT JOIN (
                        SELECT UHS.UserId, MIN(UHS.SkillId) AS 'SkillId'
                        FROM UserHasSkills UHS
                        GROUP BY UHS.UserId
                        ) UHS ON UHS.UserId = U.Id
            ";
            }

            sql += @"
                LEFT JOIN Locations L ON U.LocationId = L.Id
                LEFT JOIN Disciplines D ON UWD.DisciplineId = D.Id
                LEFT JOIN Skills S ON UHS.SkillId = S.Id AND S.DisciplineId = D.Id
            WHERE    ";

            if ((search.Discipline != null) && search.Discipline.Trim() != "") {
                sql += " RTRIM(LTRIM(D.Name)) = LTRIM(@Discipline) AND";
            }
            if (search.Skill != null) {
                sql += " RTRIM(LTRIM(S.Name)) = LTRIM(@Skill) AND";
            }
            if (search.Location != null) {
                sql += " RTRIM(LTRIM(L.Name)) = LTRIM(@Location) AND";
            }
            if (search.YOE != null) {
                sql += " RTRIM(LTRIM(UWD.Year)) = LTRIM(@YOE) AND";
            }

            // remove the last AND
            sql = sql.Substring(0, sql.Length-3);
            
            sql += " ) AS SearchUser";
            if (search.FromDate != null && search.ToDate != null) {
                sql += " WHERE SearchUser.Availability >= @Availability/100.0";
            }
           
            sql += ";";
            
            // for debug
            // Console.WriteLine(sql);

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return await connection.QueryAsync<UserInSearch>(sql, new {
                search.Discipline,
                search.Skill,
                search.Location,
                search.YOE,
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
