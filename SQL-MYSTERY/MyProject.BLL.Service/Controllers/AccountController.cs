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
                    context.Add(user);
                    context.SaveChanges();
                }
                return Ok("Signed up successfully!!!");
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        [HttpGet("{login}", Name = "Login")]
        public ActionResult Get(string login)
        {
            try
            {
                UserData user;
                using (SqlMysteryContext context = new SqlMysteryContext())
                {
                    user = context.UsersData.Single(u => u.Login == login);
                }
                return Ok(user);
            }
            catch (Exception ex)
            {
                if (ex.Message == "Sequence contains no elements")
                {
                    return NotFound();
                }
                return StatusCode(500, ex.Message);
            }
        }
    }
}
