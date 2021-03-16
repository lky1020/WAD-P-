using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies1
{
    public partial class SearchHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                   if (Request.Cookies["LastSearch"] != null)
        {
            lblSearch.Text = Request.Cookies["LastSearch"].Value;
        }
        else
        {
            lblSearch.Text = "";
        } 
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        
        HttpCookie myCookie = new HttpCookie("LastSearch", txtSearch.Text);
        //HttpCookie myCookie = new HttpCookie("LastSearch");
        //myCookie.Value = txtSearch.Text;
        myCookie.Expires = DateTime.Now.AddDays(7);
        Response.Cookies.Add(myCookie);
    }
        
    }
}