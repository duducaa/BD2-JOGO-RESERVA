using System.Data;
using System.Data.Common;
using MySql.Data.MySqlClient;

namespace MyProject.DAL
{
    public class UserCmdInsert
    {
        public Dictionary<string, string> InsertSolution(String query)
        {           
            Dictionary<string, string> response = new Dictionary<string, string>();

            MySqlConnection com = new MySqlConnection("Server=localhost;Database=sql_mystery;Uid=root;Pwd=1234;");
            MySqlCommand cmd = new MySqlCommand(query, com);

            try
            {
                com.Open();
                cmd.ExecuteNonQuery();
                com.Close();
                response.Add("Type", "No Error");
                return response;
            }
            catch (MySqlException ex)
            {
                response.Add("Type", "MYSQL");
                response.Add("Code", ex.Number.ToString());
                response.Add("Message", ex.Message);
                return response;
            }
            catch (System.Exception ex)
            {
                response.Add("Type", "C#");
                response.Add("Error", ex.Message);
                return response;
            }
        }
    }
}
