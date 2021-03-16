<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Application.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblDisplayDate" runat="server"></asp:Label><br />
        <asp:Label ID="lblCount" runat="server"></asp:Label>
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" /></div>
    </form>
</body>
</html>
