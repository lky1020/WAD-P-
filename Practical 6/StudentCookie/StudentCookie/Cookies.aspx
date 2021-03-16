<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="StudentCookie.Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblCookies" runat="server"></asp:Label>

            <br />
            <br />
            <br />

            Enter Value To Store in Cookie: <asp:TextBox ID="txtValue" runat="server"></asp:TextBox>

            <br />
            <br />
            <br />

            <asp:Button ID="btnSetCookie" runat="server" Text="Set Cookie" OnClick="btnSetCookie_Click" />
        </div>
    </form>
</body>
</html>
