using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class SessionLogin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("You log in as " + Session["username"] + "<br/>");
            Response.Write("Your session ID :" + Session.SessionID);
            Session.Timeout = 1;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
            Response.Redirect("SessionLogin1.aspx");
        }
    }
}