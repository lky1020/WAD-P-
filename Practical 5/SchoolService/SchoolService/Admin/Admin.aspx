<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SchoolService.Admin.Admin" %>

<asp:Content ID="AdminPage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p style="font-weight: bold; font-size: 36px; text-decoration: underline;">Admin</p>

        <asp:LoginName ID="LoginName1" runat="server" FormatString="You are logged in as:{0}" />


        <br />
        <br />
        Click on the Select button below to delete the user:

        <asp:GridView ID="gvUser" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvUser_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserId], [UserName], [LastActivityDate] FROM [vw_aspnet_Users]"></asp:SqlDataSource>

    </div>
</asp:Content>
