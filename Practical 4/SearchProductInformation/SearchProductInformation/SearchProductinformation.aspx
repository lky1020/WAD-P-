<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchProductinformation.aspx.cs" Inherits="SearchProductInformation.SearchProductinformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Product Information</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span style="font-size: 24px; font-weight:bold; text-decoration:underline;">Search Product Information Based On Category Name</span>

            <br /><br />

            Select a category name:
            <asp:DropDownList ID="ddlCategoryName" runat="server"></asp:DropDownList> &nbsp;&nbsp;
            <asp:Button ID="btnFind" runat="server" Text="Find" OnClick="btnFind_Click" />

            <br /><br />
            <hr />
            <br />

            Your search return: <asp:Label ID="lblResult" runat="server"></asp:Label>&nbsp;record

            <br /><br />

            <br />
            <hr />
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><br />Product Name:</td>
                        <td>
                            <asp:Label ID="lblProductName" runat="server" Text='<%#Eval("ProductName") %>'/> <br />
                        </td>
                    </tr>

                    <tr>
                        <td>Unit Price:</td>
                        <td>
                            <asp:Label ID="lblUnitPirce" runat="server" Text='<%#Eval("UnitPrice") %>'/>
                        </td>
                    </tr>
                </ItemTemplate>
                <SeparatorTemplate>  
                    <tr>  
                        <td></td>  
                        <td>  
                            <br />  
                        </td>  
                    </tr> 
                    <tr>  
                        <td>  
                        </td>  
                        <td>  
                            <br />  <hr />
                        </td>  
                    </tr> 
            </SeparatorTemplate> 
            </asp:Repeater>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice] FROM [Alphabetical list of products]"></asp:SqlDataSource>--%>

        </div>
    </form>
</body>
</html>
