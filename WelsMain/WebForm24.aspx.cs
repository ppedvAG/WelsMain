using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Der ID-Parameter sollte dem DataKeyNames-Wert entsprechen, der für das Steuerelement
        // festgelegt wurde, oder mit einem Wertanbieterattribut versehen werden, z. B. [QueryString]int id
        public WelsMain.Personen FormView1_GetItem([FriendlyUrlSegments(0)]int? PersonId)
        {
            if (PersonId==null)
            {
                FormView1.ChangeMode(FormViewMode.Insert);
            }
            var ef = new Kantine();
            return ef.Personen.Find(PersonId);
        }
    }
}