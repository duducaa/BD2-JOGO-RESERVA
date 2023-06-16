using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MyProject.DAL;
using Newtonsoft.Json;
using System.Data;

namespace MyProject.BLL.Service.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RequestController : ControllerBase
    {
        class Result
        {
            public DataTable? table;
            public Dictionary<string, string>? Error;
        }

        [HttpPost(Name = "SelectQuery")]
        public ActionResult SelectQuery([FromBody] string query)
        {
            try
            {
                UserCmdSelect select = new UserCmdSelect();

                Result result = new Result();
                result.table = select.GetTable(query);
                result.Error = select.GetError();

                return result.table != null ? Ok(JsonConvert.SerializeObject(result)) : NotFound();
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        [HttpPost("InsertQuery")]
        public ActionResult InsertQuery([FromBody] string query)
        {
            try
            {
                UserCmdInsert insert = new UserCmdInsert();
                insert.InsertSolution(query);
                Result result = new Result();
                result.table = null;
                result.Error = insert.GetError();

                if (Convert.ToInt32(result.Error["Code"]) == 1062 && query.Trim().Split(" ")[2].ToUpper() == "TB_SOLUCAO")
                {
                    result.Error["Message"] = "Parabéns, você encontrou o assassino!!! Devido a seu ato de bravura e coragem, " +
                                            "o país agora conhece o nome de James Buggy, um dos melhores detetives. " +
                                            "De agora em diante, fique atento ao seu comunicador, porque, com certeza, mais casos aparecerão. Até breve!!!";
                }

                return Ok(JsonConvert.SerializeObject(result));
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }
    }
}
