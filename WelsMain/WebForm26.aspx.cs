﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WelsMain
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IEnumerable<WelsMain.Personen> Repeater1_GetData()
        {
            var ef = new Kantine();
            return ef.Personen.ToList();
        }
    }
}