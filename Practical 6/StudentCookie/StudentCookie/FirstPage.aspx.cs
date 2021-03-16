using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentCookie
{
    public partial class FirstPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lBtnWelcome_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("CookieName");
            cookie["name"] = txtName.Text;
            cookie["programme"] = rdlProgramme.SelectedValue;
            Response.Cookies.Add(cookie);
            cookie.Expires = DateTime.Now.AddSeconds(60);

            if (ddlLanguage.SelectedValue.Equals("English"))
            {
                Session["Lang"] = "en-US";
            }
            else
            {
                Session["Lang"] = "bm";
            }

            Response.Redirect("~/Welcome.aspx?Lang=" + ddlLanguage.SelectedValue, true);
        }
    }
}