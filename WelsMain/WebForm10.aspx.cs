using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls;

namespace WelsMain
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                Label1.Text = Request.QueryString["id"];
            }
            if (Request.GetFriendlyUrlSegments().Count>1)
            {
                Label1.Text= Request.GetFriendlyUrlSegments()[1];
            }
            

           


        }
    }
}