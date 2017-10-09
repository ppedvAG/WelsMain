using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class Rechner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void plus_Click(object sender, EventArgs e)
        {
          Label1.Text=  txtEins.Text + txtZwei.Text;

        }

        protected void Minus_Click(object sender, EventArgs e)
        {
            Label1.Text =(Convert.ToDouble(txtEins.Text) -
                Convert.ToDouble(txtZwei.Text)).ToString();
        }
    }
}