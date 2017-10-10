using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
            var cmd = new SqlCommand("Select * from Essen",con);
            var da = new SqlDataAdapter(cmd);
            var ds = new DataTable();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}