using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MyProject.BLL.Service.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        [HttpPost(Name = "SignUp")]
        public ActionResult SignUp([FromBody] string login, [FromBody] string email, [FromBody] string password)
        {

        }
    }
}
