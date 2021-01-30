<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlyingBreakfast.aspx.cs" Inherits="FlyingBreakfast.FlyingBreakfast" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span style="font-weight: bold; font-size: 36px;">FLYING BREAKFAST.COM</span>

            <br /><br />

            Order your breakfast online. Online order starts 2.00am - 11am everyday.

            <br /><br />

            <table style="width: 15%;border: 1.5px solid black;">
                <tr>
                    <td rowspan="3" style="border-right: 1px solid black;">
                        Breakfast Set
                    </td>

                    <td>
                        <asp:RadioButtonList ID="rdlSet" runat="server" AutoPostBack="true">
                            <asp:ListItem>Set 1</asp:ListItem>
                            <asp:ListItem>Set 2</asp:ListItem>
                            <asp:ListItem>Set 3</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>

            </table>

            <br /><br />

            <asp:Label ID="lblSetDetail" runat="server"></asp:Label>

            <br /><br />

            <table style="width: 25%;border: 1.5px solid black;">
                <tr>
                    <td style="border: 1.5px solid black;"></td>
                    <td style="border: 1.5px solid black;">Quantity</td>
                    <td style="border: 1.5px solid black;">Total(RM)</td>
                </tr>
                <tr>
                    <td style="border: 1.5px solid black;"><asp:CheckBox ID="cbSet1" runat="server" Text="Set 1"/></td>
                    <td style="border: 1.5px solid black;"><asp:TextBox ID="txtSet1Quan" runat="server" Width="16px"></asp:TextBox></td>
                    <td style="border: 1.5px solid black;"><asp:Label ID="lblPriceSet1" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="border: 1.5px solid black;"><asp:CheckBox ID="cbSet2" runat="server" Text="Set 2"/></td>
                    <td style="border: 1.5px solid black;"><asp:TextBox ID="txtSet2Quan" runat="server" Width="16px"></asp:TextBox></td>
                    <td style="border: 1.5px solid black;"><asp:Label ID="lblPriceSet2" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="border: 1.5px solid black;"><asp:CheckBox ID="cbSet3" runat="server" Text="Set 3"/></td>
                    <td style="border: 1.5px solid black;"><asp:TextBox ID="txtSet3Quan" runat="server" Width="16px"></asp:TextBox></td>
                    <td style="border: 1.5px solid black;"><asp:Label ID="lblPriceSet3" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="border: 1.5px solid black;"></td>
                    <td style="border: 1.5px solid black;">Total(RM)</td>
                    <td style="border: 1.5px solid black;"><asp:Label ID="lblTotalPrice" runat="server"></asp:Label></td>
                </tr>
            </table>

            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

            <br /><br />
            <asp:Button ID="btnConfirmOrder" runat="server" Text="Confirm Order" OnClick="btnConfirmOrder_Click" PostBackUrl="~/OrderConfirmation.aspx" />
        </div>
    </form>
</body>
</html>
