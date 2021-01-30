using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HolidayTravelPackage
{
    public partial class HappyTravelPackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                lblMsg.Text = "Thank you for using our service";
            }
            else
            {
                lblMsg.Text = "Happy Holiday from MOM Travel";

                lblDestination.Text = "Your Destination : " + ddlFrom.SelectedValue.ToString() + "-" + ddlTo.SelectedValue.ToString();

                int differentPrice = differencesPrice();

                if (differentPrice < 0)
                {
                    lblMessage.Text = "Sorry! Can't go for holiday!";
                    lblMoneyLeft.Text = "";
                }
                else
                {
                    lblMessage.Text = "Yay! Can go for holiday!";
                    lblMoneyLeft.Text = "RM " + differentPrice + " extra pocket money!";
                }

            }
            
        }

        private int calculatePrice()
        {
            String from = ddlFrom.SelectedValue.ToString();
            String to = ddlTo.SelectedValue.ToString();

            if(from == "KL" && to == "Japan")
            {
                return 2400;
            }
            else if (from == "KL" && to == "Auckland")
            {
                return 2200;
            }
            else if (from == "Penang" && to == "Japan")
            {
                return 3400;
            }
            else
            {
                return 3200;
            }
        }

        private int differencesPrice()
        {
            //get budget
            int budget = Int32.Parse(txtBudget.Text);

            return budget - calculatePrice();
        }
    }
}