using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {




        }

        public IEnumerable<Essen> rptEssen_GetData()
        {
            var liste = new List<Essen>();
            var con = new SqlConnection(
                         ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
            var cmd = new SqlCommand("Select * from Essen", con);
            con.Open();
            var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                var e = new Essen();
                e.Id = (int) reader["EssenId"];
                e.EssenText = reader["Essen"].ToString();
                e.Preis =(int) reader["Preis"];
                liste.Add(e);

            }
            reader.Close();
            con.Close();



            return liste;
        }
    }
}