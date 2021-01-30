using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingBreakfast
{
    public partial class FlyingBreakfast : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Display the menu set info
            if(IsPostBack == true)
            {
                // Set 1
                if (rdlSet.SelectedValue.Equals("Set 1"))
                {
                    lblSetDetail.Text = "<u>Menu for Set 1</u>" + "</br>" +
                                        "Nasi Lemak" + "</br>" +
                                        "Chicken Rendang" + "</br>" +
                                        "Teh Tarik" + "</br>" +
                                        "<b>RM 12.50</b>";
                }
                // Set 2
                else if (rdlSet.SelectedValue.Equals("Set 2"))
                {
                    lblSetDetail.Text = "<u>Menu for Set 2</u>" + "</br>" +
                                        "Mee Goreng" + "</br>" +
                                        "Fried Egg" + "</br>" +
                                        "Teh Tarik" + "</br>" +
                                        "<b>RM 8.50</b>";
                }
                // Set 3
                else if (rdlSet.SelectedValue.Equals("Set 3"))
                {
                    lblSetDetail.Text = "<u>Menu for Set 3</u>" + "</br>" +
                                        "Chicken Sauseges" + "</br>" +
                                        "Omelette" + "</br>" +
                                        "Read Beans" + "</br>" +
                                        "Coffee" + "</br>" +
                                        "<b>RM 10.50</b>";
                }
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double total = 0;

            // Set 1
            if (cbSet1.Checked && Int32.Parse(txtSet1Quan.Text) >= 1)
            {
                lblPriceSet1.Text = (Int32.Parse(txtSet1Quan.Text) * 12.50).ToString("0.00");
                total += Int32.Parse(txtSet1Quan.Text) * 12.50;
            }

            // Set 2
            if (cbSet2.Checked && Int32.Parse(txtSet2Quan.Text) >= 1)
            {
                lblPriceSet2.Text = (Int32.Parse(txtSet2Quan.Text) * 8.50).ToString("0.00");
                total += Int32.Parse(txtSet2Quan.Text) * 8.50;
            }

            // Set 3
            if (cbSet3.Checked && Int32.Parse(txtSet3Quan.Text) >= 1)
            {
                lblPriceSet3.Text = (Double.Parse(txtSet3Quan.Text) * 10.50).ToString("0.00");
                total += Double.Parse(txtSet3Quan.Text) * 10.50;
            }

            if(total >= 1.00)
            {
                lblTotalPrice.Text = total.ToString("0.00");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            rdlSet.ClearSelection();
            lblSetDetail.Text = "";
            lblPriceSet1.Text = "";
            lblPriceSet2.Text = "";
            lblPriceSet3.Text = "";
            lblTotalPrice.Text = "";

            txtSet1Quan.Text = "";
            txtSet2Quan.Text = "";
            txtSet3Quan.Text = "";

            cbSet1.Checked = false;
            cbSet2.Checked = false;
            cbSet3.Checked = false;
        }

        protected void btnConfirmOrder_Click(object sender, EventArgs e)
        {
            double total = 0;

            // Set 1
            if (cbSet1.Checked && Int32.Parse(txtSet1Quan.Text) >= 1)
            {
                lblPriceSet1.Text = (Int32.Parse(txtSet1Quan.Text) * 12.50).ToString("0.00");
                total += Int32.Parse(txtSet1Quan.Text) * 12.50;
            }

            // Set 2
            if (cbSet2.Checked && Int32.Parse(txtSet2Quan.Text) >= 1)
            {
                lblPriceSet2.Text = (Int32.Parse(txtSet2Quan.Text) * 8.50).ToString("0.00");
                total += Int32.Parse(txtSet2Quan.Text) * 8.50;
            }

            // Set 3
            if (cbSet3.Checked && Int32.Parse(txtSet3Quan.Text) >= 1)
            {
                lblPriceSet3.Text = (Double.Parse(txtSet3Quan.Text) * 10.50).ToString("0.00");
                total += Double.Parse(txtSet3Quan.Text) * 10.50;
            }

            if (total >= 1.00)
            {
                lblTotalPrice.Text = total.ToString("0.00");
            }
        }
    }
}