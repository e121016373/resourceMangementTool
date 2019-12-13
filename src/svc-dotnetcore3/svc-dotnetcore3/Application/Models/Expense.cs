using System;

namespace Web.API.Application.Models
{
    public class Expense
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public DateTime Date { get; set; }
        public int Value { get; set; }
    }
}
