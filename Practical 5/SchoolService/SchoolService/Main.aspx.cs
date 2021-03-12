using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolService
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.IsInRole("Admin"))
            {
                HyperLink1.Visible = true;
                lblAdmin.Visible = true;
            }
            else
            {
                HyperLink1.Visible = false;
                lblAdmin.Visible = false;
            }
        }
    }
}