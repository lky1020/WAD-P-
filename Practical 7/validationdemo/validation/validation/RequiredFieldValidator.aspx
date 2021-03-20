<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequiredFieldValidator.aspx.cs" Inherits="Validation.RequiredFieldValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
    <form id="form1" runat="server">
      
    <div>
    
       Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFV_name" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ForeColor="#FF0066">*</asp:RequiredFieldValidator>
      
    </div>  
        <br />
        <div>    Birth date: 
    <asp:TextBox ID="txtBirthDate" runat="server">dd/mm/yyyy</asp:TextBox>&nbsp;<asp:RequiredFieldValidator
        ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Birthdate is required." ControlToValidate="txtBirthDate" 
        InitialValue="dd/mm/yyyy" ForeColor="#FF0066">*</asp:RequiredFieldValidator> &nbsp;
          
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtBirthDate" ErrorMessage="Date format required." ForeColor="#FF0066" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
          
</div><br />
          
  <div>
        
    <asp:ListBox ID="lstCardType" runat="server">
        <asp:ListItem Value="None" Selected="True">--Select a credit card--</asp:ListItem>
        <asp:ListItem>Visa</asp:ListItem>
        <asp:ListItem Value="MC">MasterCard</asp:ListItem>
        <asp:ListItem Value="AmEx">American Express</asp:ListItem>
    </asp:ListBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="You must select a credit card type." 
        ControlToValidate="lstCardType" InitialValue="None" Display="Dynamic" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
      <br />
      <br />
      <asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem Value="nil">Select One</asp:ListItem>
          <asp:ListItem>Gift</asp:ListItem>
          <asp:ListItem>Car Wash</asp:ListItem>
      </asp:DropDownList>
&nbsp;
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
          ControlToValidate="DropDownList1" Display="Static" 
          ErrorMessage="Please select a free gift" InitialValue="nil" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
&nbsp;</div>
        <br />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
    <asp:Button ID="Button1" runat="server" Text="Validate" OnClick="Button1_Click" />
    </form>
</body>
</html>