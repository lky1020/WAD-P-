<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SessionState.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Some String: <asp:TextBox ID="txtString" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:Button ID="SubmitString" runat="server" Text="Submit String" OnClick="SubmitString_Click" />
            <asp:Button ID="btnSubmit" runat="server" Text="Just Submit" />

            <br />
            <br />

            Value of the string: held in the MEMBER VARIABLE: <asp:Label ID="LabelShowString" runat="server"></asp:Label>

            <br />
            <br />

            Value of the string: help in the SESSION VARIABLE: <asp:Label ID="LabelShowStringAsSessionState" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
