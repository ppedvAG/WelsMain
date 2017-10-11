using Microsoft.AspNet.FriendlyUrls;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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
            //if (Request.GetFriendlyUrlSegments().Count==0)
            //{
            //    FormView1.ChangeMode(FormViewMode.Insert);
            //}

        }

        // Der ID-Parameter sollte dem DataKeyNames-Wert entsprechen, der für das Steuerelement
        // festgelegt wurde, oder mit einem Wertanbieterattribut versehen werden, z. B. [QueryString]int id
        public WelsMain.Personen FormView1_GetItem([FriendlyUrlSegments(0)]int? PersonId)
        {
            if (PersonId == null)
            {

                FormView1.ChangeMode(FormViewMode.Insert);


            }
            var ef = new Kantine();
            return ef.Personen.Find(PersonId);
        }

        // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
        public void FormView1_UpdateItem(int PersonId)
        {
            var ef = new Kantine();
            WelsMain.Personen item = null;
            // Element hier laden, z. B. item = MyDataLayer.Find(id);
            if (item == null)
            {
                // Das Element wurde nicht gefunden.
                ModelState.AddModelError("", String.Format("Das Element mit der ID {0} wurde nicht gefunden.", PersonId));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Änderungen hier speichern, z. B. MyDataLayer.SaveChanges();
                ef.SaveChanges();
            }
        }

        // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
        public void FormView1_DeleteItem(int PersonId)
        {
            var ef = new Kantine();
            ef.Entry(new Personen { PersonID = PersonId }).State = EntityState.Deleted;
            ef.SaveChanges();


        }

        public void FormView1_InsertItem()
        {
            var ef = new Kantine();
            var item = new WelsMain.Personen();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                ef.Personen.Add(item);
                ef.SaveChanges();
                // Save changes here

            }
        }
    }
}