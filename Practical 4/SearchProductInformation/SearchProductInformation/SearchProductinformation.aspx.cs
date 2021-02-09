using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SearchProductInformation
{
    public partial class SearchProductinformation : System.Web.UI.Page
    {

        SqlCommand cmd;
        SqlDataAdapter da;
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                DataSet ds = RepeaterData("");

                ddlCategoryName.DataSource = ds;
                ddlCategoryName.DataValueField = "CategoryName";
                ddlCategoryName.DataBind();
            }
        }

        public DataSet RepeaterData(string category)
        {
            SqlConnection conn = new SqlConnection(connStr);

            conn.Open();

            //Pageload
            if(category == "")
            {
                cmd = new SqlCommand("SELECT " +
                    "DISTINCT [CategoryName] "+
                    "FROM [Alphabetical list of products] ORDER BY [CategoryName]", conn);
            }
            else
            {
                cmd = new SqlCommand("SELECT " +
                    "[CategoryID], [CategoryName], [ProductName], [UnitPrice] " +
                    "FROM [Alphabetical list of products] WHERE categoryName='" + category + "'", conn);
            }

            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds;
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            DataSet ds = RepeaterData(ddlCategoryName.SelectedValue.ToString());
            lblResult.Text = ds.Tables.Cast<DataTable>().Sum(x => x.Rows.Count).ToString();

            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}