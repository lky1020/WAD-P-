using Practical4ii.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical4ii
{
    public partial class BookCount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable gvBooks_GetData()
        {
            BooksInventoryEntities _db = new BooksInventoryEntities();
            lblRecord.Text = _db.Books.Count().ToString();
            return _db.Books;
        }
    }
}