<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NextPage.aspx.cs" Inherits="Visitor.NextPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link id="css" href="<%=(string)Session["SelectedCss"] %>" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            You are visitors : <asp:Label ID="lblVisitor" runat="server"></asp:Label>

            <br />
            You access on <asp:Label ID="lblDateAccess" runat="server"></asp:Label>

            <br />
            <br />

            <asp:HyperLink ID="hpPreviousPage" runat="server" Text="Previous Page" NavigateUrl="~/Visitor.aspx"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
