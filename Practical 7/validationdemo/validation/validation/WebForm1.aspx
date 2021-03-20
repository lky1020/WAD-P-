<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Validation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                   Name: <asp:TextBox ID="txtName" runat="server" style="width: 128px">E.g. ABC</asp:TextBox>
                   <asp:RequiredFieldValidator ID="rqvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ForeColor="Red" InitialValue="E.g. ABC">*</asp:RequiredFieldValidator>
                   <asp:RequiredFieldValidator ID="rqvName0" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                   <br />
                   <br />
                   Credit Card:
                   <br />
        
    <asp:ListBox ID="lstCardType" runat="server" OnSelectedIndexChanged="lstCardType_SelectedIndexChanged">
        <asp:ListItem Value="None" Selected="True">--Select a credit card--</asp:ListItem>
        <asp:ListItem>Visa</asp:ListItem>
        <asp:ListItem Value="MC">MasterCard</asp:ListItem>
        <asp:ListItem Value="AmEx">American Express</asp:ListItem>
    </asp:ListBox>
                   <asp:RequiredFieldValidator ID="rqvCC" runat="server" ControlToValidate="lstCardType" ErrorMessage="Please select a credit card." ForeColor="Red" InitialValue="None">*</asp:RequiredFieldValidator>
                   <br />
                   <br />
                   Quantity:
                   <asp:TextBox ID="txtQuantity" runat="server" OnTextChanged="txtQuantity_TextChanged" style="width: 128px"></asp:TextBox>
                   <asp:CompareValidator ID="cvQuantity" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity must be numeric." ForeColor="Red" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                   <br />
                   <br />
                   <br />
                   Start Date:<br />
                   <asp:TextBox ID="txtStartDate" runat="server" OnTextChanged="txtStartDate_TextChanged"></asp:TextBox>
                   <%--<asp:CompareValidator ID="cvStartDate" runat="server" ControlToValidate="txtStartDate" ErrorMessage="Start Date must be greater than Today Date" ForeColor="Red" Operator="GreaterThan" Type="Date">*</asp:CompareValidator>--%>
                   <br />
                   <br />
                   <br />
                   End Date:<br />
                   <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                   <asp:CompareValidator ID="cvEndDate" runat="server" ControlToCompare="txtEndDate" ControlToValidate="txtStartDate" ErrorMessage="Start Date must be less than End Date" ForeColor="Red" Operator="LessThan" Type="Date">*</asp:CompareValidator>
                   <br />
                   <br />
                   Marks:
                   <br />
                   <asp:TextBox ID="txtMarks" runat="server"></asp:TextBox>
                   <asp:RangeValidator ID="rvMarks" runat="server" ControlToValidate="txtMarks" ErrorMessage="Marks is between 0-100" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
                   <br />
                   <br />
                   Arrival Day:<br />
                   <asp:TextBox ID="txtArrival" runat="server" OnTextChanged="txtMarks0_TextChanged"></asp:TextBox>
                   <%--<asp:RangeValidator ID="rvArrival" runat="server" ControlToValidate="txtArrival" ErrorMessage="Arrival Date should be 30 days from today." ForeColor="Red" Type="Date">*</asp:RangeValidator>--%>
                   <br />
                   <br />
                   Postcode:<br />
                   <asp:TextBox ID="txtPostcode" runat="server" OnTextChanged="txtMarks0_TextChanged"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="rgvPostCode" runat="server" ControlToValidate="txtPostcode" ErrorMessage="PostCode must be 5 digits" ForeColor="Red" ValidationExpression="\d{5}">*</asp:RegularExpressionValidator>
                   <br />
                   <br />
                   Regular Expression:<br />
                   <asp:TextBox ID="txtRegularExpression" runat="server"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="rgvSample" runat="server" ControlToValidate="txtRegularExpression" ErrorMessage="\w*\d\w*" ForeColor="Red" ValidationExpression="\w*\d\w*">*</asp:RegularExpressionValidator>
                   <br />
                   <br />
                   <br />
                   <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                   <br />
                   <br />
                   <asp:Button ID="btnValidate" runat="server" OnClick="btnValidate_Click" Text="Validate" />
        </div>
    </form>
</body>
</html>
