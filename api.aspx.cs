using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Web.UI;

public partial class api : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string connectionString = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={DESKTOP-7T0Q7H0};DATABASE={data_python};Trusted_Connection=yes;'
        string query = "SELECT id, sid, tempp FROM temp";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            var data = new List<object>();

            while (reader.Read())
            {
                data.Add(new
                {
                    id = reader["id"],
                    sid = Convert.ToInt32(reader["sid"]),
                    tempp = Convert.ToDouble(reader["tempp"])
                });
            }

            var jsonResponse = new
            {
                ok = 1,
                data = data
            };

            JavaScriptSerializer js = new JavaScriptSerializer();
            Response.ContentType = "application/json";
            Response.Write(js.Serialize(jsonResponse));
        }
    }
}
