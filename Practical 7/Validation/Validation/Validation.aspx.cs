using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation
{
    public partial class Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                revCreditCardNumber.ValidationExpression = "^4\\d{13}$";
            }
            else
            {
                if (rdlCreditCardType.SelectedValue.Equals("Visa"))
                {
                    revCreditCardNumber.ValidationExpression = "^4\\d{13}$";
                }
                else
                {
                    revCreditCardNumber.ValidationExpression = "^5\\d{13}$";
                }
            }
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblResult.Text = "You have entered the following: <br/>" +
                    "User name: " + txtUsername.Text + "<br/>" +
                    "Password: " + txtPassword.Text + "<br/>" +
                    "Age: " + txtAge.Text + "<br/>" +
                    "Date of birth: " + txtDOB.Text + "<br/>" +
                    "Credit card number: " + txtCreditCardNumber.Text + "<br/>";
        }
    }
}