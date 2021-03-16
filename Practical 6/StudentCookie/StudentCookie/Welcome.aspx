<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="StudentCookie.Welcome"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hello, <asp:Label ID="lblName" runat="server"></asp:Label> <asp:Label ID="lblFrom" runat="server" meta:resourceKey="lblFrom"></asp:Label> <asp:Label ID="lblProgramme" runat="server"></asp:Label>

            <br />
            <br />

            <asp:Label style="font-size: 36px; font-weight: bold;" ID="lblWelcome" runat="server"  meta:resourceKey="lblWelcome"></asp:Label>

            <br />
            <br />
            <br />

            <asp:Label ID="lblCache" runat="server"  meta:resourceKey="lblCache"></asp:Label> <asp:Label ID="lblCacheTime" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
