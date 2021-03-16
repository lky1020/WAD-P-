using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentCookie
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSetCookie_Click(object sender, EventArgs e)
        {
            if (!txtValue.Text.Equals(""))
            {
                HttpCookie httpCookie = new HttpCookie("CookieName");
                httpCookie["value"] = txtValue.Text;
                Response.Cookies.Add(httpCookie);
            }

            HttpCookie cookie = Request.Cookies["CookieName"];

            if (cookie == null)
            {
                lblCookies.Text = "Cookie Not Found! Now you can set Cookies with value By using set Cookie Button!";
            }
            else
            {
                lblCookies.Text = "Cookie Found! The Value of Cookie is " + cookie["value"];
            }
        }
    }
}