using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolService.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void gvUser_SelectedIndexChanged(object sender, EventArgs e)
        {
            Membership.DeleteUser(gvUser.SelectedRow.Cells[2].Text);
            Response.Write("<script>alert('User been deleted');</script>");
            Response.Write("<script>window.location = 'Admin.aspx';</script>");
        }
    }
}