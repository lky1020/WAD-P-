<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBooks.aspx.cs" Inherits="Practical4ii.AddBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="font-size: 24px; font-weight: bold;">Insert Book</p>
            <asp:FormView ID="fvBook" runat="server" DefaultMode="Insert" InsertMethod="fvBook_InsertItem" ItemType="Practical4ii.Models.Book" DataKeyNames="ISBN" OnItemCommand="fvBook_ItemCommand">
                <InsertItemTemplate>
                    <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
                    <asp:TextBox ID="txtTitle" runat="server" Text='<%# Bind("Title")%>'></asp:TextBox>

                    <br />

                    <asp:Label ID="lblAuthor" runat="server" Text="Author"></asp:Label>
                    <asp:TextBox ID="txAuthor" runat="server" Text='<%# Bind("Author")%>'></asp:TextBox>

                    <br />

                    <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
                    <asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Price")%>'></asp:TextBox>

                    <br />

                    <asp:Button ID="btnCreate" runat="server" Text="Create" CommandName="Insert" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" />
                </InsertItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
