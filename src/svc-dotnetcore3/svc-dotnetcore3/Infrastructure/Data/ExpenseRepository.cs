﻿using Web.API.Application.Models;
using Web.API.Application.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using Dapper;

namespace Web.API.Infrastructure.Data
{
    public class ExpenseRepository : IExpenseRepository
    {
        private readonly string connectionString = string.Empty;

        public ExpenseRepository(string connectionString)
        {
            this.connectionString = !string.IsNullOrWhiteSpace(connectionString) ? connectionString : throw new ArgumentNullException(nameof(connectionString));
        }

        public List<Expense> GetAllExpenses()
        {
            var sql = @"
                select
                    Id, Description, Date, Value
                from
                    Expenses
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection.Query<Expense>(sql).ToList();
        }

        public Expense GetAnExpense(int expenseId)
        {
            var sql = @"
                select 
                    Id, Description, Date, Value
                from
                    Expenses
                where
                    Id = @Id
            ;";

            using var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection.QueryFirstOrDefault<Expense>(sql, new { Id = expenseId });
        }
    }
}