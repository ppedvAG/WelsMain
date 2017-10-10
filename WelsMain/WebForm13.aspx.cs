using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["hannes"]!=null)
            {
                var cookie = Request.Cookies["hannes"];
                Label1.Text = cookie.Value;
            }
       

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var cookie = new HttpCookie("hannes", TextBox1.Text);
            cookie.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(cookie);
        }
    }
}