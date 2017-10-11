using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm22 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        // Der Rückgabetyp kann in 'IEnumerable' geändert werden. Damit Paginierung und Sortierung
        // unterstützt werden, müssen jedoch die folgenden Parameter hinzugefügt werden:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<WelsMain.Personen> GridView1_GetData([Control("DropDownList1")] string esser )
        {
            var ef = new Kantine();
            Action<string> logger = (m) => Debug.WriteLine(m);
            ef.Database.Log=logger;
            var myesser= Convert.ToInt16(DropDownList1.SelectedValue);
            return ef.Personen.Where((x)=>x.Verzehr.Count>=myesser).AsQueryable();
           
        }

        // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
        public void GridView1_UpdateItem(int PersonID)
        {
            var ef = new Kantine();
            WelsMain.Personen item = null;
            item = ef.Personen.Find(PersonID);
            if (item == null)
            {
                // Das Element wurde nicht gefunden.
                ModelState.AddModelError("", String.Format("Das Element mit der ID {0} wurde nicht gefunden.", PersonID));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                ef.SaveChanges();

            }
        }
    }
}