﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MembershipServiceProvider.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to the Halloween Stroe Maintenance application.

            <br />
            <br />

            <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Menu.aspx"></asp:Login>

            <br />
            <br />

            Need to create a new account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CreateUser.aspx">Click Here</asp:HyperLink>

            <br />
            <br />

            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Menu.aspx">Go Back To Menu</asp:HyperLink>
        </div>
    </form>
</body>
</html>
