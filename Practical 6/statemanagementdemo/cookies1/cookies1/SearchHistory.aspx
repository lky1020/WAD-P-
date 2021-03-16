<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchHistory.aspx.cs" Inherits="Cookies1.SearchHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Your Last Search:
        <asp:Label ID="lblSearch" runat="server"></asp:Label><br />
        <br />
        Search :
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" /></div>
    </form>
</body>
</html>

