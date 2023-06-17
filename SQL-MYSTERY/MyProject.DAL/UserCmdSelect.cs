using System.Data;
using System.Data.Common;
using MySql.Data.MySqlClient;
using Newtonsoft.Json;

namespace MyProject.DAL
{
    public class UserCmdSelect : UserCmd
    {

        public DataTable? GetTable(String query) {


            MySqlConnection connection = new MySqlConnection(this.connectionString);
            MySqlCommand cmd = this.GetCommand(query, connection);
            try
            {
                connection.Open();
                DataTable tab = new DataTable();
                tab.Load(cmd.ExecuteReader());
                connection.Close();
                return tab;
            }
            catch (MySqlException ex)
            {
                this.ErrorCode = ex.ErrorCode;
                this.Message = ex.Message;
                return null;
            }
            catch (Exception ex)
            {
                this.Message = ex.Message;
                this.ErrorCode = -1;
                return null;
            }
        }
    }
}
