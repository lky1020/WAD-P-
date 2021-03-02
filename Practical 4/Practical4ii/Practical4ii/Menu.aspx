<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Practical4ii.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="font-size: 24px; font-weight: bold;">Menu</p>

            <asp:HyperLink ID="hpViewBook" runat="server" NavigateUrl="~/ViewBooks.aspx">View Book List</asp:HyperLink>

            <br />

            <asp:HyperLink ID="hpUpdate" runat="server" NavigateUrl="~/UpdateBooks.aspx">Update Book</asp:HyperLink>

            <br />

            <asp:HyperLink ID="hpDelete" runat="server" NavigateUrl="~/DeleteBooks.aspx">Delete Book</asp:HyperLink>

            <br />

            <asp:HyperLink ID="hpRecordCount" runat="server" NavigateUrl="~/BookCount.aspx">View Book Count</asp:HyperLink>

        </div>
    </form>
</body>
</html>
