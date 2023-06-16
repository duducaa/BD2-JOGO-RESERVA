using System.Data;
using System.Data.Common;
using MySql.Data.MySqlClient;
using Newtonsoft.Json;

namespace MyProject.DAL
{
    public class UserCmdSelect
    {
        public DataTable GetTable(String query) {


            MySqlConnection com = new MySqlConnection("Server=localhost;Database=sql_mystery;Uid=root;Pwd=1234;");
            MySqlCommand cmd = new MySqlCommand(query, com);
            try
            {
                com.Open();
                DataTable tab = new DataTable();
                tab.Load(cmd.ExecuteReader());
                com.Close();
                return tab; 
            }
            catch
            {
                return new DataTable();
            }
        }
    }
}
