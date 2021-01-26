<%@ Page Language="C#" MasterPageFile="~/Practical2.Master" AutoEventWireup="true" CodeBehind="ServerControl.aspx.cs" Inherits="Practical2.ServerControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"> 

            <table style="width: 25%; height: 146px; padding: 15px;">
                <tr>
                    <td class="auto-style4">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtName" runat="server" Width="188px"></asp:TextBox>
                    </td>
                </tr>

                <tr style="padding: 10px 0px">
                    <td class="auto-style4">Programmed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlProg" runat="server">
                            <asp:ListItem>RIS</asp:ListItem>
                            <asp:ListItem>RSD</asp:ListItem>
                            <asp:ListItem>RIT</asp:ListItem>
                            <asp:ListItem>RSF</asp:ListItem>
                            <asp:ListItem>REI</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style4">Area of Interest&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                    <td class="auto-style2">
                        <asp:CheckBoxList ID="cblInterest" runat="server">
                            <asp:ListItem>Programming</asp:ListItem>
                            <asp:ListItem>Database</asp:ListItem>
                            <asp:ListItem>Networking</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">
                        <br />
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        
            <br />
            <asp:Label ID="lblSelect" runat="server">Label</asp:Label>
</asp:Content>
