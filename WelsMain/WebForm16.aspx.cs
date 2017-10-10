using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (WebUserControl11.Text.Length>5)
            {
                WebUserControl11.IsValid1 = false;

            }
            else
            { WebUserControl11.IsValid1 = true; }
        }
    }
}