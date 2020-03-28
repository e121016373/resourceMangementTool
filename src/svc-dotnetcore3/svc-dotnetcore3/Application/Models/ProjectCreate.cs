using System;

namespace Web.API.Application.Models
{
    public class ProjectCreate
    {
        public string Number { get; set; }
        public string Title { get; set; }
        public string Location { get; set; }
        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
    }
}
