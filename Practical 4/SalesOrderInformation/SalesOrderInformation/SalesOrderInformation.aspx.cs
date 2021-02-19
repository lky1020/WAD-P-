using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesOrderInformation
{
    public partial class SalesOrderInformation : System.Web.UI.Page
    {

        SqlCommand cmd;
        SqlDataAdapter da;
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        //Global variable
        //string employeeID;

        protected void Page_Load(object sender, EventArgs e)
        {

            //if (IsPostBack == true)
            //{
            //    calculteTotalSales();
            //}

            calculteTotalSales();
        }

        private DataSet RetrieveEmployeeName()
        {
            SqlConnection conn = new SqlConnection(connStr);

            conn.Open();

            cmd = new SqlCommand("SELECT " +
                "(LastName + ' ' + FirstName) AS Name, EmployeeID " +
                "FROM [Employees] ORDER BY [Name]", conn);
            
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);

            conn.Close();

            return ds;
        }

        private DataSet RetrieveOrderDate(string employeeID)
        {
            SqlConnection conn = new SqlConnection(connStr);

            conn.Open();

            cmd = new SqlCommand("SELECT DISTINCT YEAR(O.OrderDate) AS Year " + 
                                "FROM Orders O JOIN Employees E ON(E.EmployeeID = O.EmployeeID) " +
                                "WHERE E.EmployeeID ='" + employeeID + "'", conn);

            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            conn.Close();

            return ds;
        }

        private DataSet RetrieveOrder(string employeeID)
        {
            SqlConnection conn = new SqlConnection(connStr);

            conn.Open();

            cmd = new SqlCommand("SELECT O.OrderID, YEAR(O.OrderDate) AS Year " +
                                "FROM Orders O JOIN Employees E ON(O.EmployeeID = E.EmployeeID) " +
                                "WHERE E.EmployeeID ='" + employeeID + "'", conn);

            Debug.WriteLine(employeeID);

            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            conn.Close();

            return ds;
        }

        private void SetGrandTotalSales(string employeeID)
        {
            SqlConnection conn = new SqlConnection(connStr);

            conn.Open();

            cmd = new SqlCommand("SELECT SUM(OD.UnitPrice * OD.Quantity) AS GrandTotalSales " +
                                "FROM[Order Details] OD JOIN[Orders] O " +
                                "ON(OD.OrderID = O.OrderID) " +
                                "JOIN[Employees] E " +
                                "ON(O.EmployeeID = E.EmployeeID) " +
                                "WHERE E.EmployeeID ='" + employeeID + "' " +
                                "AND YEAR(O.OrderDate) ='" + rdlYear.SelectedValue + "'", conn);

            string str = cmd.ExecuteScalar().ToString();
            double grandTotalSales = Double.Parse(str);

            lblTitleGridView.Text = "Sales Order by " + ddlStaffName.SelectedItem.Text + " in the year of " + rdlYear.SelectedValue +
                ". Grand Total Sales: $" + grandTotalSales.ToString("0.00");

            conn.Close();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //lblTitleGridView.Text = "Sales Order by " + ddlStaffName.SelectedValue + " in the year of " + rdlYear.SelectedValue +
            //    ". Grand Total Sales: $";
            SetGrandTotalSales(ddlStaffName.SelectedValue.ToString());
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //calculteTotalSales();
        }

        private void calculteTotalSales()
        {

            if(DataList1.Items.Count > 0)
            {
                double grandTotal = 0;

                //Calculate GrandTotal
                foreach (DataListItem item in DataList1.Items)
                {
                    double sales = 0;

                    Label lblUnitPrice = item.FindControl("UnitPriceLabel") as Label;
                    Label lblQuantity = item.FindControl("QuantityLabel") as Label;
                    Label lblDiscount = item.FindControl("DiscountLabel") as Label;
                    Label lblSales = item.FindControl("SalesLabel") as Label;

                    double unitPrice = Convert.ToDouble(lblUnitPrice.Text);
                    double quantity = Convert.ToDouble(lblQuantity.Text);
                    double discount = Convert.ToDouble(lblDiscount.Text);

                    if (discount != 0.0)
                    {
                        sales = unitPrice * quantity * discount;
                        grandTotal += sales;
                    }
                    else
                    {
                        sales = unitPrice * quantity;
                        grandTotal += sales;
                    }

                    lblSales.Text = sales.ToString("0.00");
                }

                lblOldSales.Text = "Total Sales for <b>Order ID:" + GridView1.SelectedRow.Cells[1].Text + "=$" + grandTotal.ToString("0.00") + "</b>";
            }

        }
    }
}