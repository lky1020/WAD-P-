<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Visitor.aspx.cs" Inherits="Visitor.Visitor" %>

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

            Choose a theme: <br />
            <asp:DropDownList ID="ddlTheme" runat="server">
                <asp:ListItem Text="Standard"></asp:ListItem>
                <asp:ListItem Text="Special"></asp:ListItem>
            </asp:DropDownList>

            &nbsp;&nbsp;

            <asp:Button ID="btnApply" runat="server" Text="Apply" OnClick="btnApply_Click" />

            <br />
            <asp:CheckBox ID="ckRemember" runat="server" Text="Remember preference" />

            <br />
            <br />

            <asp:HyperLink ID="hpNextPage" runat="server" Text="Next Page" NavigateUrl="~/NextPage.aspx"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
