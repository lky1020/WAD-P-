﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="MembershipServiceProvider.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            The Halloween Store - Authentication Tests

            <br /> 
            <br />

            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="true" NavigateUrl="~/Order.aspx">Order a Product</asp:HyperLink><br /> 
            (All users including anonymous users)

            <br /> 
            <br />

            <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="true" NavigateUrl="~/MyAccount/MyAccount.aspx">Edit My Account</asp:HyperLink><br /> 
            (All unathenticated users)

            <br /> 
            <br />

            <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="true" NavigateUrl="~/Maintenance/Maintenance.aspx">Maintain Data Tables</asp:HyperLink><br /> 
            (Only users associated with the Admin role)

        </div>
    </form>
</body>
</html>
