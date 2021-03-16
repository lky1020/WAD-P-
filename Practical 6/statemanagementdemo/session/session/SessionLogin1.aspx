<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionLogin1.aspx.cs" Inherits="Session.SessionLogin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span style="text-decoration: underline"><strong>Registration Page
            <br />
            <br />
        </strong></span>Name :
        <asp:TextBox ID="TextBox1" runat="server" Width="99px"></asp:TextBox><br />
        <br />
        Password :
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="94px"></asp:TextBox><br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" /></div>
    </form>
</body>
</html>
