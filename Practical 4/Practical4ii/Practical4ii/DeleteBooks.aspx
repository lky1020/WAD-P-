<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteBooks.aspx.cs" Inherits="Practical4ii.DeleteBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="font-size: 24px; font-weight: bold;">Delete Book</p>

            <br />

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" InsertVisible="False" ReadOnly="True" SortExpression="ISBN" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [ISBN] = @original_ISBN AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [Book] ([Title], [Author], [Price]) VALUES (@Title, @Author, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [Title] = @Title, [Author] = @Author, [Price] = @Price WHERE [ISBN] = @original_ISBN AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ISBN" Type="Int32" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Author" Type="String" />
                    <asp:Parameter Name="original_Price" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="original_ISBN" Type="Int32" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Author" Type="String" />
                    <asp:Parameter Name="original_Price" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>


            <%--<asp:FormView ID="fvBook" runat="server"  DefaultMode="Edit" DeleteMethod="fvBook_DeleteItem" ItemType="Practical4ii.Models.Book" DataKeyNames="ISBN">
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

                    <asp:Button ID="btnCreate" runat="server" Text="Create" CommandName="Insert" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" />
                </EditItemTemplate>
            </asp:FormView>--%>

            <br />

            <asp:HyperLink ID="hpMenu" runat="server" NavigateUrl="~/Menu.aspx">Back to Menu</asp:HyperLink>
        </div>
    </form>
</body>
</html>
