using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusTicketing
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                lblTime.Text = "You are accessing this page on " + DateTime.Now.ToString();

                DateTime date = DateTime.Today;
                txtDepartDt.Text = date.ToString("dd/MM/yyyy");
            }
        }

        protected void calDepartDt_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Validation
            if(ddlFrom.SelectedValue.Equals("Hentian Duta") && ddlTo.SelectedValue.Equals("Seremban"))
            {
                lblError.Text = "Sorry, We do not provide trip from Hentian Duta to Seremban.";
                txtPrice.Text = "";

            }
            else if(ddlFrom.SelectedValue.Equals("Hentian Putra") && ddlTo.SelectedValue.Equals("Butterworth"))
            {
                lblError.Text = "Sorry, We do not provide trip from Hentian Putra to Butterworth.";
                txtPrice.Text = "";
            }
            else
            {
                // Calculate the ticket price
                // int adult = Int32.Parse(txtAdult.Text);
                // int child = Int32.Parse(txtChild.Text);

                txtPrice.Text = "RM 93.50";
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtAdult.Text = "";
            txtChild.Text = "";
            ddlFrom.SelectedValue = "Hentian Johor Bahru";
            ddlTo.SelectedValue = "Kuala Lumpur";
        }
    }
}