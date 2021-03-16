using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblWelcome.Text = Application["Welcome"].ToString();
            lblDisplayDate.Text = "You log on to our site on " + Session["Time"].ToString();
            lblCount.Text = "There are " + Application["intVisitors"].ToString() + " user(s) online.";
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}