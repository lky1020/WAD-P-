<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateBooks.aspx.cs" Inherits="Practical4ii.UpdateBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <h1>Update Book</h1>

        <asp:DropDownList ID="ddlISBN" runat="server" 
            DataTextField="ISBN" DataValueField="ISBN" AutoPostBack="True" 
            SelectMethod="BindISBN" AppendDataBoundItems="true">
            <asp:ListItem Value="0">Select One:</asp:ListItem>
        </asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>


        <br />
        <br />

        <asp:FormView ID="fvBook" runat="server" DefaultMode="Edit" UpdateMethod="fvBook_UpdateItem" ItemType="Practical4ii.Models.Book" DataKeyNames="ISBN" SelectMethod="BindBookDetails" >
            <EditItemTemplate>
                <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
                    <asp:TextBox ID="txtTitle" runat="server" Text='<%# Bind("Title")%>'></asp:TextBox>

                    <br />

                    <asp:Label ID="lblAuthor" runat="server" Text="Author"></asp:Label>
                    <asp:TextBox ID="txAuthor" runat="server" Text='<%# Bind("Author")%>'></asp:TextBox>

                    <br />

                    <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
                    <asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Price")%>'></asp:TextBox>

                    <br />

                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" />

            </EditItemTemplate>
        </asp:FormView>

        <asp:HyperLink ID="hpMenu" runat="server" NavigateUrl="~/Menu.aspx">Back to Menu</asp:HyperLink>
    </form>
</body>
</html>
