<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookCount.aspx.cs" Inherits="Practical4ii.BookCount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="font-size: 24px; font-weight: bold;">Book Count</p>

            <asp:Label ID="lblRecord" runat="server"></asp:Label> &nbsp;Records

            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" InsertVisible="False" ReadOnly="True" SortExpression="ISBN" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Book]" OnSelected="SqlDataSource1_Selected"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
