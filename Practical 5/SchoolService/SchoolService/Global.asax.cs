using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace SchoolService
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //Create Admin Role
            if (!Roles.RoleExists("Admin"))
            {
                Roles.CreateRole("Admin");
            }

            //Create Admin User
            if (Membership.FindUsersByName("admin123").Count == 0)
            {
                Membership.CreateUser("admin123", "abc123");
            }

            //Assign Admin Role to the user
            if (!Roles.IsUserInRole("admin123", "Admin"))
            {
                Roles.AddUserToRole("admin123", "Admin");
            }

            //Create Student Role
            if (!Roles.RoleExists("Student"))
            {
                Roles.CreateRole("Student");
            }

            //Create Student User
            if (Membership.FindUsersByName("stud1").Count == 0)
            {
                Membership.CreateUser("stud1", "stud1");
            }

            if (Membership.FindUsersByName("stud2").Count == 0)
            {
                Membership.CreateUser("stud2", "stud2");
            }

            //Assign Student Role to the user
            if (!Roles.IsUserInRole("stud1", "Student"))
            {
                Roles.AddUserToRole("stud1", "Student");
            }

            if (!Roles.IsUserInRole("stud2", "Student"))
            {
                Roles.AddUserToRole("stud2", "Student");
            }
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}