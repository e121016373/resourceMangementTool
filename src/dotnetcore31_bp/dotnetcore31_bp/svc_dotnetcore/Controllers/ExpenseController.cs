using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using dotnetcore31_bp.svc_dotnetcore.Application.Repository;
using Microsoft.AspNetCore.Mvc;

namespace dotnetcore31_bp.svc_dotnetcore.Controllers
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