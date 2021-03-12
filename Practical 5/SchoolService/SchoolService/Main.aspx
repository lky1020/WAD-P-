<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="SchoolService.Main" %>

<asp:Content ID="MainPage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p style="font-weight: bold; font-size: 36px; text-decoration: underline;">Main Page</p>

        <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="RedirectToLoginPage" />

        <br /> 
        <br />

        <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="true" NavigateUrl="~/Admin/Admin.aspx">Admin</asp:HyperLink><br /> 
        <asp:Label ID="lblAdmin" runat="server" Text="(Only users associated with the Admin role)"></asp:Label>

    </div>
</asp:Content>
