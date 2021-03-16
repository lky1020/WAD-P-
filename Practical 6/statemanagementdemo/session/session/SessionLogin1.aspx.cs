using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class SessionLogin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Session["username"] = TextBox1.Text; // or Session.Add("username",TextBox1.Text);
            Response.Redirect("SessionLogin2.aspx");

        }
    }
}