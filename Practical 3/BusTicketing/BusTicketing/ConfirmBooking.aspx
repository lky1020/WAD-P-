<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="BusTicketing.ConfirmBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <b style="font-size: 24px;">ABC BUS BOOKING CONFIRMATION</b>

            <br />
            <br />

            <span>You have confirmed your booking with the following details:</span>

            <br />
            <br />

            <asp:Label ID="lblDetails" runat="server"></asp:Label>

            <br />
            <br />

            <span>Please make payment at our counter:</span>
        </div>
    </form>
</body>
</html>
