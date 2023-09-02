using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MyProject.DAL.Sakila;
using MyProject.MODEL;

namespace MyProject.BLL.Service.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        [HttpPost(Name = "SignUp")]
        public ActionResult SignUp([FromBody] UserData user)
        {
            try
            {
                using (SqlMysteryContext context = new SqlMysteryContext())
                {
                    context.UsersData.Add(user);
                    context.SaveChanges();
                }
                return Ok("Signed up successfully!!!");
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        public class LoginModel
        {
            public string? login { get; set; }
            public string? password { get; set; }
        }

        [HttpPost("Login")]
        public ActionResult Login([FromBody] LoginModel model)
        {
            try
            {
                UserData _user;
                using (SqlMysteryContext context = new SqlMysteryContext())
                {
                    _user = context.UsersData.Single(u => u.Login == model.login);
                    if (_user.HashPassword == model.password) return Ok(_user);
                    return BadRequest("The password is incorrect!!!");
                }
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }
    }
}
