using dotnetcore31_bp.svc_dotnetcore.Application.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace dotnetcore31_bp.svc_dotnetcore.Application.Repository
{
    public interface IUserRepository
    {
        List<User> GetAllUsers();
        User GetAUser(string username);
    }
}
