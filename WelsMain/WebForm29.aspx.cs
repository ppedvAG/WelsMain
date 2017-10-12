using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm29 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<String> Repeater1_GetData()
        {
            //var liste = Directory.GetFiles(Server.MapPath("~/image/"));
            //List<String> result= new List<string>();
            //foreach (var item in liste)
            //{
            //    result.Add(Path.GetFileName(item));
            //}

            var q = from p in Directory.GetFiles(Server.MapPath("~/image/"))
                    select Path.GetFileName(p);

            return q;
        }
    }
}