using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) // we only set the value for one time only during FIRST page load
            {
                //cvStartDate.ValueToCompare = DateTime.Today.ToShortDateString();
                //rvArrival.MinimumValue = DateTime.Today.ToShortDateString();
                //rvArrival.MaximumValue = DateTime.Today.AddDays(30).ToShortDateString();

            }

        }

        protected void btnValidate_Click(object sender, EventArgs e)
        {

        }

        protected void lstCardType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtQuantity_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtStartDate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtMarks0_TextChanged(object sender, EventArgs e)
        {

        }
    }
}