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
            this.lblVisitor.Text = (String)this.Session["numVisitor"];

            this.lblDateAccess.Text = (String)this.Session["dateAccess"];
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (ckRemember.Checked)
            {
                int numVisitor = Int32.Parse(this.lblVisitor.Text);

                this.Session["numVisitor"] = (numVisitor + 1).ToString();
                this.Session["dateAccess"] = DateTime.Now.ToString();
                this.Session["SelectedCss"] = ddlTheme.SelectedItem.Text + ".css";
            }
        }
    }
}