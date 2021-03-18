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
            if (rdlCreditCardType.SelectedValue.Equals("Visa"))
            {
                //Response.Write("<script>alert('hihi');</script>");
                revCreditCardNumber.ValidationExpression = "^4[0-9]{12}(?:[0-9]{3})?$";
            }
            else
            {
                //Response.Write("<script>alert('hello');</script>");
                revCreditCardNumber.ValidationExpression = "^5[1 - 5][0 - 9]{ 14}$";
            }
            
        }

    }
}