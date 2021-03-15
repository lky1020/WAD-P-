using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionState
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Create the cookie object
            HttpCookie cookie = new HttpCookie("CookieName");

            //Set a value
            cookie["Language"] = "Tamil";
            cookie["Country"] = "India";

            //Add it to current web response
            Response.Cookies.Add(cookie);

            //This cookie lives for one year
            cookie.Expires = DateTime.Now.AddYears(1);
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["CookieName"];

            string language = "";
            string country = "";

            if(cookie != null)
            {
                language = cookie["Language"];
            }

            lblDisplay.Text = language + country;
        }
    }
}