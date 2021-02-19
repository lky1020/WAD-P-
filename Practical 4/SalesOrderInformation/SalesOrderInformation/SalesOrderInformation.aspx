<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesOrderInformation.aspx.cs" Inherits="SalesOrderInformation.SalesOrderInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Sales Order Information BY Staff.</h1>

            <br />

            <table style="width: 50%;">
                <tr>
                    <td><b>Please select staff name :</b></td>
                    <td><b>Please select year :</b></td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlStaffName" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="EmployeeID"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rdlYear" runat="server" RepeatDirection="Horizontal" DataSourceID="SqlDataSource3" DataTextField="Year" DataValueField="Year"></asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"></asp:Button>
                    </td>
                </tr>
            </table>

            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT EmployeeID, (LastName + ' ' + FirstName) AS Name From Employees"></asp:SqlDataSource>
            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT YEAR(OrderDate) AS Year FROM Orders"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT OrderID, (CONVERT(VARCHAR(15), OrderDate, 106)) AS OrderDate FROM Orders WHERE (EmployeeID = @EmployeeID) AND (YEAR(OrderDate) = @OrderDate)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlStaffName" Name="EmployeeID" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="rdlYear" Name="OrderDate" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <br />
            <asp:Label ID="lblTitleGridView" runat="server" Font-Bold="true"></asp:Label>
            <br />
            <br />

            <table style="width: 50%;">
                <tr>
                    <td colspan="2"  style="vertical-align: top;">
                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="OrderID" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" ReadOnly="True" SortExpression="OrderDate" />
                            </Columns>
                        </asp:GridView>
                    </td>

                    <td colspan ="2" style="vertical-align: top;">
                        <asp:Label ID="lblOldSales" runat="server"></asp:Label>

                        <br />

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT P.ProductName, OD.UnitPrice, OD.Quantity, OD.Discount FROM Products P JOIN [Order Details] OD ON(P.ProductID = OD.ProductID) WHERE OrderID = @OrderID ">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="OrderID" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                        <br />
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Width="313px">
                            <ItemTemplate>
                                ProductName:
                                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                                <br />
                                UnitPrice:$
                                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice", "{0:0.00}") %>' />
                                <br />
                                Quantity:
                                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                                <br />
                                Discount:
                                <asp:Label ID="DiscountLabel" runat="server" Text='<%# Eval("Discount", "{0:0}") %>' />%
                                <br />
                                Sales: $
                                <asp:Label ID="SalesLabel" runat="server"/>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
