using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm21 : System.Web.UI.Page
    {

        Kantine ef = new Kantine();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            int id = Convert.ToInt16(DropDownList1.SelectedValue);
            // Label1.Text = ef.Personen.Where(p => p.PersonID == id).FirstOrDefault().Verzehr.Aggregate((v, v1) => v + (v1.Essen.Preis * v1.Anzahl));
            Label1.Text = ef.Personen.Where(p => p.PersonID == id).FirstOrDefault().Verzehr.Sum((v) => (v.Essen.Preis * v.Anzahl)).ToString();

        }

        // Der Rückgabetyp kann in 'IEnumerable' geändert werden. Damit Paginierung und Sortierung
        // unterstützt werden, müssen jedoch die folgenden Parameter hinzugefügt werden:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<WelsMain.Personen> ListView1_GetData()
        {
            return ef.Personen;

        }
    }
}