using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingBreakfast
{
    public partial class OrderConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage != null && PreviousPage.IsCrossPagePostBack)
            {

                //CheckBox
                CheckBox Set1 = PreviousPage.FindControl("cbSet1") as CheckBox;
                CheckBox Set2 = PreviousPage.FindControl("cbSet2") as CheckBox;
                CheckBox Set3 = PreviousPage.FindControl("cbSet3") as CheckBox;

                //TextBox
                TextBox Quan1 = PreviousPage.FindControl("txtSet1Quan") as TextBox;
                TextBox Quan2 = PreviousPage.FindControl("txtSet2Quan") as TextBox;
                TextBox Quan3 = PreviousPage.FindControl("txtSet3Quan") as TextBox;

                //Label
                Label TotalPrice = PreviousPage.FindControl("lblTotalPrice") as Label;

                //Order details
                String orderDetails = "";

                if (Set1.Checked)
                {
                    orderDetails += Quan1.Text + " - Menu Set 1</br>";
                }
                if (Set2.Checked)
                {
                    orderDetails += Quan2.Text + " - Menu Set 2</br>";
                }
                if (Set2.Checked)
                {
                    orderDetails += Quan3.Text + " - Menu Set 3</br>";
                }

                lblOrder.Text = orderDetails + "Total Price = RM " + TotalPrice.Text;

                //Time
                lblTimeNow.Text = DateTime.Now.ToString("hh:mm tt");
                lblReceiveTime.Text = DateTime.Now.AddMinutes(25).ToString("hh:mm tt");

                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('This page is to confirm your breakfast order')", true);
            }
        }
    }
}