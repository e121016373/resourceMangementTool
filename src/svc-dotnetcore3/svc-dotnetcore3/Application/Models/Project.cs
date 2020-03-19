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
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Hours { get; set; }
    }
}
