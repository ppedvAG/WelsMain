using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WelsMain
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code, der beim Anwendungsstart ausgeführt wird
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application.Add("anzahluser", 0);
        }
        void Session_Start(object sender,EventArgs e)
        {
            Application["anzahluser"] =
                (int) Application["anzahluser"] + 1;

        }
        void Session_End(object sender, EventArgs e)
        {
            Application["anzahluser"] =
              (int)Application["anzahluser"] - 1;
        }
    }
}