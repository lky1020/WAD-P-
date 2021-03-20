<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidator.aspx.cs" Inherits="Validation.CompareValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            width: 111px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1" style="font-family:Calibri">
            <tr>
                <td class="auto-style2">Quantity:</td>
                <td> 
    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtQuantity" ErrorMessage="Quantity is Required."></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity must be integer." Operator="DataTypeCheck" Type="Integer" ForeColor="#FF0066">*</asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity must be greater than 0." Operator="GreaterThan" Type="Integer" ValueToCompare="0" ForeColor="#FF0066">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Start Date:</td>
                <td> 
    <asp:TextBox ID="txtStartDate0" runat="server"></asp:TextBox>
                &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style2">End Date:</td>
                <td> 
    <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
    &nbsp;
    <asp:CompareValidator ID="CompareValidator4" runat="server" 
        ControlToCompare="txtStartDate0" ControlToValidate="txtEndDate" 
        ErrorMessage="End Date must be greater than Start Date." Operator="GreaterThan" 
        Type="Date" Display="Dynamic" ForeColor="#FF0066">*</asp:CompareValidator>
    <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="txtStartDate0" 
        ErrorMessage="Start Date must be greater than today." Operator="GreaterThan" 
        Type="Date" Display="Dynamic" ForeColor="#FF0066">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
    <asp:Button ID="Button2" runat="server" Text="Validate" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
