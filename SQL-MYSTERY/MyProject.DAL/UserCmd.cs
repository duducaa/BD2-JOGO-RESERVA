using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyProject.DAL
{
    public abstract class UserCmd
    {
        public String Message { get; protected set; }
        public int ErrorCode { get; protected set; }
        public String connectionString { get; protected set; }

        public Dictionary<string, string> GetError() => new Dictionary<string, string>()
            {
                { "Message", this.Message},
                { "Code", this.ErrorCode.ToString() }
            };

        protected MySqlCommand GetCommand(string query, MySqlConnection connection) => new MySqlCommand(query, connection);

        public UserCmd() 
        {
            this.Message = "No Error";
            this.ErrorCode = 0;
            this.connectionString = "Server=localhost;Database=sql_mystery;Uid=web-user;Pwd=1234;";
        }
    }
}
