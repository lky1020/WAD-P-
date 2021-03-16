using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Visitor
{
    public partial class Visitor : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblVisitor.Text = this.Application["intVisitors"].ToString();

            this.lblDateAccess.Text = (String)this.Session["Time"];
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (ckRemember.Checked)
            {
                //int numVisitor = Int32.Parse(this.lblVisitor.Text);

                //this.Session["intVisitors"] = (numVisitor + 1).ToString();
                //this.Session["Time"] = DateTime.Now.ToString();
                this.Session["SelectedCss"] = ddlTheme.SelectedItem.Text + ".css";
            }
        }
    }
}