using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Visitor
{
    public partial class NextPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblVisitor.Text = this.Application["intVisitors"].ToString();

            this.lblDateAccess.Text = (String)this.Session["Time"];
        }
    }
}