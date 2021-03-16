<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="StudentCookie.FirstPage" %>

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
                    <td>
                        Name:
                    </td>

                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        Programme:
                    </td>

                    <td>
                        <asp:RadioButtonList ID="rdlProgramme" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="RIS2"></asp:ListItem>
                            <asp:ListItem Text="RIT2"></asp:ListItem>
                            <asp:ListItem Text="RSD2"></asp:ListItem>
                            <asp:ListItem Text="RSF2"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>

                <tr>
                    <td>
                        Language:
                    </td>

                    <td>
                        <asp:DropDownList ID="ddlLanguage" runat="server">
                            <asp:ListItem Text="English"></asp:ListItem>
                            <asp:ListItem Text="Malay"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>

            <br />

            <asp:LinkButton ID="lBtnWelcome" runat="server" Text="Go" OnClick="lBtnWelcome_Click"></asp:LinkButton>
        </div>
    </form>
</body>
</html>
