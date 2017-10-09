using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var liste = new string[7];
            for (int i = 0; i < 7; i++)
            {

                liste[i] = CultureInfo.CurrentCulture.DateTimeFormat.DayNames[i];


                var day = ((DayOfWeek)i).ToString();

                RadioButtonList1.Items.Add(day);
            }
        }
        // Enum.Parse(typeof(DayOfWeek),)

    }
}
