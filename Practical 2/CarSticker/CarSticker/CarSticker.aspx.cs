using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarSticker
{
    public partial class CarSticker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calJoinedDate.Visible = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (txtName.Text != "" && txtID.Text != "" && txtVechileRegNum.Text != "")
            {

                lblInfo.Text = "Student Name: "                     + txtName.Text                      + "</br>" +
                                "Student's ID: "                    + txtID.Text                        + "</br>" +
                                "Joined Date: "                     + txtJoinedDate.Text                + "</br>" +
                                "Gender: "                          + ddlGender.SelectedItem.Value      + "</br>" +
                                "Programmed: "                      + ddlProg.SelectedItem.Value        + "</br>" +
                                "Year of Study: "                   + ddlYearOfStudy.SelectedItem.Value + "</br>" +
                                "Vehicle's Registration Number: "   + txtVechileRegNum.Text             + "</br>" +
                                "Vehicle's Type: "                  + ddlVehicleType.SelectedItem.Value + "</br>";

            }
            else
            {
                lblInfo.Text = "Please Enter All the Field!!!";
            }
        }

        protected void imgBtnCalendar_Click(object sender, ImageClickEventArgs e)
        {
            if (calJoinedDate.Visible)
            {
                calJoinedDate.Visible = false;
            }
            else
            {
                calJoinedDate.Visible = true;
            }

            calJoinedDate.Attributes.Add("style", "position:absolute");
        }

        protected void calJoinedDate_SelectionChanged(object sender, EventArgs e)
        {
            txtJoinedDate.Text = calJoinedDate.SelectedDate.ToString("dd/MM/yyyy");
            calJoinedDate.Visible = false;
        }
    }
}