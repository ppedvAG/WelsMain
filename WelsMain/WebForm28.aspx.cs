using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm28 : System.Web.UI.Page
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
        public IQueryable<WelsMain.Personen> GridView1_GetData()
        {
            var ef = new Kantine();
        

            return ef.Personen.Take(5);
        }
        [WebMethod()]
        public static IQueryable<WelsMain.Personen> nachladen()
        {
            var page = Convert.ToInt16( HttpContext.Current.Request.QueryString["p"]);
            var ef = new Kantine();
            ef.Configuration.LazyLoadingEnabled = false;
            var q = (from p in ef.Personen
                     orderby p.PersonID
                     select p).Skip(page ).Take(1);
            Debug.WriteLine("seite " + page.ToString());
            return q.AsQueryable();
        }
    }
}