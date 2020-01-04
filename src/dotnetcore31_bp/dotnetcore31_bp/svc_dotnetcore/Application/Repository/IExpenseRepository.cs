using dotnetcore31_bp.svc_dotnetcore.Application.Models;
using System.Collections.Generic;

namespace dotnetcore31_bp.svc_dotnetcore.Application.Repository
{
    public interface IExpenseRepository
    {
        List<Expense> GetAllExpenses();
        Expense GetAnExpense(int expenseId);
    }
}
