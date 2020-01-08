using System.Collections.Generic;
using Web.API.Application.Models;

namespace Web.API.Application.Repository
{
    public interface IUsersRepository
    {
        List<User> GetAllUsers();
        User GetAUser(string username);
    }
}
