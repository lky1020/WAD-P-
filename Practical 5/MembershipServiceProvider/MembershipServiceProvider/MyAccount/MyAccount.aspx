<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="MembershipServiceProvider.MyAccount.MyAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            The Halloween Store - My Account
            <br />
            (Only authenticated users cn access this page.)

            <br />
            <br />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MyAccount/ChangePassword.aspx">Change Password</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="true">Track Packages</asp:HyperLink>

            <br />
            <br />

            <asp:LoginName ID="LoginName1" runat="server" FormatString="You are logged in as: {0}"/>

            <br />
            <br />
            <br />

            <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="RedirectToLoginPage" />
            <br />
        </div>
    </form>
</body>
</html>
