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
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadData();

        }

        private void loadData()
        {
            var con = new SqlConnection(
                           ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
            var cmd = new SqlCommand("Select * from Essen", con);
            var da = new SqlDataAdapter(cmd);
            var ds = new DataTable();
            da.Fill(ds);
            rptEssen.DataSource = ds;
            rptEssen.DataBind();
        }

        protected void btnNeu_Click(object sender, EventArgs e)
        {
            var con = new SqlConnection(
              ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
            var cmd = new SqlCommand("Insert into Essen (essen,preis) values(@par1,@par2)", con);
            cmd.Parameters.AddWithValue("@par1", txtessen.Text);
            cmd.Parameters.AddWithValue("@par2", txtpreis.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            txtessen.Text = txtpreis.Text = "";
            loadData();

        }
    }
}