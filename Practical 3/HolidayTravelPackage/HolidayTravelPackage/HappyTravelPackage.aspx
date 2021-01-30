<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HappyTravelPackage.aspx.cs" Inherits="HolidayTravelPackage.HappyTravelPackage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span style="font-size: 36px; font-weight: bold; text-decoration:underline;">Holidy Travel Package</span>

            <br /><br />

            <span style="font-size: 32px"><asp:Label ID="lblMsg" runat="server"></asp:Label></span>

            <br /><br />

            Your Budget: <asp:TextBox ID="txtBudget" runat="server"></asp:TextBox>

            <br /><br />

            Choose your destination:<br /><br />

            <table style="width: 25%">
                <tr>
                    <td>From</td>
                    <td>To</td>
                </tr>

                <tr>
                    <td>
                        <asp:DropDownList ID="ddlFrom" runat="server">
                            <asp:ListItem>KL</asp:ListItem>
                            <asp:ListItem>Penang</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlTo" runat="server">
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Auckland</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>

            <br /><br />

            <asp:Button ID="btnCheck" runat="server" Text="Check" />

            <br /><br />

            <asp:Label ID="lblDestination" runat="server"></asp:Label><br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label><br />
            <asp:Label ID="lblMoneyLeft" runat="server"></asp:Label><br />
        </div>
    </form>
</body>
</html>
