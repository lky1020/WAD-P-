<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="BusTicketing.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 100%; text-align:center;font-size: 24px; font-weight: bold">
            ABC BUS ONLINE BOOKING & TICKETING SYSTEM
        </div>

        <br />

        <div style="text-align:center;">
            <asp:Label ID="lblTime" runat="server"></asp:Label>
        </div>

        <br />

        <table style="width: 50%;">
            <tr>
                <td>Departure Date</td>
                <td>:</td>
                <td>
                    <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
                    <asp:TextBox ID="txtDepartDt" runat="server" ></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Adult</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtAdult" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Child</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtChild" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>From</td>
                <td>:</td>
                <td>
                    <asp:DropDownList ID="ddlFrom" runat="server">
                        <asp:ListItem>Hentian Johor Bahru</asp:ListItem>
                        <asp:ListItem>Hentian Melaka</asp:ListItem>
                        <asp:ListItem>Hentian Duta</asp:ListItem>
                        <asp:ListItem>Hentian Putra</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>Destination</td>
                <td>:</td>
                <td>
                    <asp:DropDownList ID="ddlTo" runat="server" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>Kuala Lumpur</asp:ListItem>
                        <asp:ListItem>Pulau Pinang</asp:ListItem>
                        <asp:ListItem>Seremban</asp:ListItem>
                        <asp:ListItem>Butterworth</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>Ticket Price</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server" Enabled="false"></asp:TextBox>
                </td>
            </tr>
        </table>

        <div style="font-weight: bold;">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </div>

        <br />

        <asp:Button ID="btnBookTkt" runat="server" Text="Book Ticket" 
            OnClientClick="javascript:alert('You are now will be directed to the booking confirmation page')" PostBackUrl="~/ConfirmBooking.aspx"/> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" 
            OnMouseOver="this.value='Click if you confirm to reset selection'" OnMouseOut="this.value='Cancel'"/>
    </form>
</body>
</html>
