using Practical4ii.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical4ii
{
    public partial class AddBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void fvBook_InsertItem()
        {
            Book item = new Book();
            TryUpdateModel(item);

            if (ModelState.IsValid)
            {
                // Save changes here
                BooksInventoryEntities _db = new BooksInventoryEntities();
                _db.Books.Add(item);
                _db.SaveChanges();
                Response.Redirect("/ViewBooks.aspx");
            }
        }

        protected void fvBook_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
            {
                Response.Redirect("/ViewBooks.aspx");
            }
        }

    }
}