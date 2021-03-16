using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Visitor
{
    public class Global : System.Web.HttpApplication
    {

        public static int sessionVisitor;
        public static string sessionDateAccess;

        protected void Application_Start(object sender, EventArgs e)
        {
            
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            if(this.Session["numVisitor"] == null)
            {
                this.Session["numVisitor"] = "1";
                this.Session["dateAccess"] = DateTime.Now.ToString();
            }
            
            sessionVisitor = Int32.Parse((String)this.Session["numVisitor"]);
            sessionDateAccess = (String)this.Session["dateAccess"];
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}