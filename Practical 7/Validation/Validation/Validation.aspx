<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Validation.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>User Name: </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="User name is required" ControlToValidate="txtUsername" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Password: </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="txtPassword" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator  ID="revPassword" runat="server" ErrorMessage="Password should be 6 characters" Text="*" ForeColor="Red" ControlToValidate="txtPassword" ValidationExpression = "^[\s\S]{0,6}$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>Age: </td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Age is required" ControlToValidate="txtAge" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvAge" runat="server" ErrorMessage="Age must be between 1-99" ControlToValidate="txtAge" ForeColor="Red" MaximumValue="99" MinimumValue="1">*</asp:RangeValidator>
                    </td>
                </tr>

                <tr>
                    <td>Date of Birth: </td>
                    <td>
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ErrorMessage="Date of Birth is required" ControlToValidate="txtDOB" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <%--<asp:CompareValidator ID="cvDOB" runat="server" ErrorMessage="Date of Birth format shoud be MM/DD/YYYY" Text="*" ForeColor="Red" ControlToValidate="txtDOB" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>--%>
                        <asp:RegularExpressionValidator ID="revDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth format shoud be MM/DD/YYYY" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d">*</asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>Credit Card Type:</td>
                    <td>
                        <asp:RadioButtonList ID="rdlCreditCardType" runat="server" RepeatDirection="Horizontal" AutoPostBack="true">
                            <asp:ListItem Selected="True">Visa</asp:ListItem>
                            <asp:ListItem>Master</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>

                <tr>
                    <td>Credit Card Number:</td>
                    <td>
                        <asp:TextBox ID="txtCreditCardNumber" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCreditCardNumber" runat="server" ErrorMessage="Credit Card number is required" ControlToValidate="txtCreditCardNumber" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCreditCardNumber" runat="server" ControlToValidate="txtCreditCardNumber" ErrorMessage="Invalid Credit Card Number" ForeColor="Red">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>

            <br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit"/> &nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" />

            <br />
            <br />

            The following problems have been encountered

            <br />

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" />

        </div>
    </form>
</body>
</html>
