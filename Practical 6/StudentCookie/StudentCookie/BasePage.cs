using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace StudentCookie
{
    public class BasePage:Page
    {

        protected override void InitializeCulture()
        {
            if(Session["Lang"] != null)
            {
                Culture = Session["Lang"].ToString();
                UICulture = Session["Lang"].ToString();
            }

            base.InitializeCulture();
        }

        public BasePage()
        {

        }
    }
}