using Practical4ii.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical4ii
{
    public partial class DeleteBooks : System.Web.UI.Page
    {
        BooksInventoryEntities _db = new BooksInventoryEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Book> BindISBN()
        {

            var bookDetails = from b in _db.Books
                              select b;
            return bookDetails;

        }

        public IQueryable<Book> BindBookDetails([Control("ddlISBN")] int? iSBN)
        {
            var bookDetails = from b in _db.Books
                              where b.ISBN == iSBN
                              select b;
            return bookDetails;
        }

        public void DeleteBookDetails(int iSBN)
        {
            try
            {
                var book = _db.Books.Find(iSBN);
                _db.Books.Remove(book);
                _db.SaveChanges();
                ddlISBN.Items.RemoveAt(ddlISBN.SelectedIndex);
                Response.Redirect("/Menu.aspx");
            }
            catch (Exception exp)
            {

            }
        }

    }
}