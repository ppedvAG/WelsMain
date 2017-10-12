using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm27 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        // Der Rückgabetyp kann in 'IEnumerable' geändert werden. Damit Paginierung und Sortierung
        // unterstützt werden, müssen jedoch die folgenden Parameter hinzugefügt werden:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<WelsMain.Personen> GridView1_GetData([QueryString("p")]int? page)
        {
            if (page==null)
            {
                page = 0;
            }
            var ef =new  Kantine();
            var q = (from p in ef.Personen
                     orderby p.PersonID
                     select p).Skip(page.Value * 5).Take(5);
            Trace.Warn("Hallo Ich war hier");
            return q.AsQueryable();
        }
    }
}