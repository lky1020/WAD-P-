using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentCookie
{
    public partial class Welcome : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                HttpCookie cookie = Request.Cookies["CookieName"];

                if(cookie != null)
                {
                    lblName.Text = cookie["name"];
                    lblProgramme.Text = cookie["programme"];
                }
            }

            lblCacheTime.Text = DateTime.Now.ToString();
        }
    }
}