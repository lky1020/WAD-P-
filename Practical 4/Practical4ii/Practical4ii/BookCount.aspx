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

            <asp:GridView ID="gvBooks" runat="server" SelectMethod="gvBooks_GetData">
        </asp:GridView>
        </div>

        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Back to Menu</asp:HyperLink>
    </form>
</body>
</html>
