<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBooks.aspx.cs" Inherits="Practical4ii.ViewBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="font-size: 36px; font-weight: bold;">View Books</p>

            <br />

            <asp:GridView ID="GridView1" runat="server" SelectMethod="GridView1_GetData"></asp:GridView>

            <br />

            <asp:HyperLink ID="hpAdd" runat="server" NavigateUrl="~/AddBooks.aspx">Add Book</asp:HyperLink>

            <br />

            <asp:HyperLink ID="hpMenu" runat="server" NavigateUrl="~/Menu.aspx">Back to menu</asp:HyperLink>

        </div>
    </form>
</body>
</html>
