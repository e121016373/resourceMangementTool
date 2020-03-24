using System;

namespace Web.API.Application.Models
{
    public class Project
    {
        public int Id { get; set; }
        public string Number { get; set; }
        public string Title { get; set; }
        public int LocationId { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
        public string Hours { get; set; }
        public string Status { get; set; }
    }
}
