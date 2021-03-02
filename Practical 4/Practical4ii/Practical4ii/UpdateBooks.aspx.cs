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
    public partial class UpdateBooks : System.Web.UI.Page
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

        public void fvBook_UpdateItem(Book book)
        {
            if (book != null)
            {
                try
                {
                    //Only updating a few properties so grab original order
                    var originalBook = _db.Books.Find(book.ISBN);
                    originalBook.Title = book.Title;
                    originalBook.Author = book.Author;
                    originalBook.Price = book.Price;

                    _db.SaveChanges();
                }
                catch (Exception exp)
                {
                }
            }
        }
    }
}