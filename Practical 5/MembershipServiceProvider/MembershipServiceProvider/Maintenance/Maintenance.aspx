<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintenance.aspx.cs" Inherits="MembershipServiceProvider.Maintenance.Maintenance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            The Halloween Store - Maintenance

            <br />
            <br />

            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="true">Maintain categories</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="true">Maintain products</asp:HyperLink>

            <br />
            <br />

            <asp:LoginName ID="LoginName1" runat="server" FormatString="You are logged in as: {0}"/>

            <br />
            <br />

            If this isn't your correct username, please <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="true" NavigateUrl="~/Login.aspx">click here</asp:HyperLink>

            <br />
            <br />

            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </div>
    </form>
</body>
</html>
