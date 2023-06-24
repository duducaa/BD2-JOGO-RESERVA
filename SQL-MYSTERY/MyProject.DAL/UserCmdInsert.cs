using System.Data;
using System.Data.Common;
using MySql.Data.MySqlClient;

namespace MyProject.DAL
{
    public class UserCmdInsert : UserCmd
    {
        public void Insert(String query)
        {           

            MySqlConnection connection = new MySqlConnection("Server=localhost;Database=sql_mystery;Uid=root;Pwd=1234;");
            MySqlCommand cmd = this.GetCommand(query, connection);

            try
            {
                connection.Open();
                cmd.ExecuteNonQuery();
                connection.Close();
            }
            catch (MySqlException ex)
            {
                this.ErrorCode = ex.ErrorCode;
                this.Message = ex.Message;
            }
            catch (System.Exception ex)
            {
                this.Message = ex.Message;
                this.ErrorCode = -1;
            }
        }
    }
}
