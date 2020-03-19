using System;

namespace Web.API.Application.Models
{
    public class Search
    {
        // user search
        public string Discipline { get; set; }
        public string YearOfExperience { get; set; }
        public string Skill { get; set; }
        public string DateRange { get; set; }
        public string Location { get; set; }      
        public int Availability { get; set; }

        // project search
        public string ProjectNumber { get; set; }
        public string ProjectTitle { get; set; }
    }
}
