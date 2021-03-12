<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SchoolService.Login" %>

<asp:Content ID="LoginPage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p style="font-weight: bold; font-size: 24px; text-decoration: underline;">Welcome to the School Web.</p>

        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Main.aspx"></asp:Login>

        <br />
        <br />

        Need to create a new account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Click Here</asp:HyperLink>

    </div>
</asp:Content>
