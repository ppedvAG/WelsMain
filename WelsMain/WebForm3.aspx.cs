using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {

            }
            else
            {     TextBox1.Text = "Hallo Welt";
                //var btn = new Button();
                //btn.Text = "MeinButtin";
                //Page.Controls.Add(btn);
                //Button1.Click += Button1_Click1;
            }

        
        }

        private void Button1_Click1(object sender, EventArgs e)
        {
            
            throw new NotImplementedException();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(TextBox1.Text);
        }
    }
}