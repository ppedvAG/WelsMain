using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
      
       
        public bool IsValid1 { get; set; } = true;
        public string Label
        {
            set { Label1.Text = value; }
        }
        public string Text { get { return TextBox1.Text; }
            set { TextBox1.Text = value; } }
        public string ErrorMessage { set { ErrorLabel.Text = value;
               
            } }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }
}