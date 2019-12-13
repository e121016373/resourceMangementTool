﻿using Microsoft.AspNetCore.Mvc;
using Web.API.Application.Repository;

namespace Web.API.Controllers
{
    public class ExpensesController : ControllerBase
    {
        private readonly IExpenseRepository expenseRepository;

        public ExpensesController(IExpenseRepository expenseRepository)
        {
            this.expenseRepository = expenseRepository;
        }

        [HttpGet]
        [Route("/expenses/all")]
        public IActionResult GetAllExpenses()
        {
            var expenses = expenseRepository.GetAllExpenses();
            return Ok(expenses);
        }

        [HttpGet]
        [Route("/expenses/{expenseId}")]
        public IActionResult GetAnExpense(int expenseId)
        {
            var expense = expenseRepository.GetAnExpense(expenseId);
            return Ok(expense);
        }
    }
}