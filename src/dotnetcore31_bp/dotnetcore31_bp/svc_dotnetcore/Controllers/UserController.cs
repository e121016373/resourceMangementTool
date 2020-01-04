using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using dotnetcore31_bp.svc_dotnetcore.Application.Models;
using dotnetcore31_bp.svc_dotnetcore.Application.Repository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace dotnetcore31_bp.svc_dotnetcore.Controllers
{
    [Authorize]
    public class UsersController : ControllerBase
    {
        private readonly IUserRepository userRepository;

        public UsersController(IUserRepository userRepository)
        {
            this.userRepository = userRepository;
        }

        [HttpGet]
        [Route("/users/all")]
        public IActionResult GetAllUsers()
        {
            var users = userRepository.GetAllUsers();
            return Ok(users);
        }

        [HttpGet]
        [Route("/users/{username}")]
        public IActionResult GetAUser(string username)
        {
            var user = userRepository.GetAUser(username);
            return Ok(user);
        }

        [HttpGet]
        [Route("/users/ad")]
        public IActionResult GetADUser()
        {
            var user = new List<User>()
            {
                new User {
                    Id = 0,
                    FirstName = "Testing",
                    LastName = "Ad",
                    Username = User.Identity.Name
                }
            };
            return Ok(user);
        }
    }
}