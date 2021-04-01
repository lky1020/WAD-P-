<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Labels.ascx.cs" Inherits="Prac8.Labels" %>

<table style="width: 100%; height: 65px; text-align: right; background-color: #BCDEFF">
    <tr>
        <td>
            <asp:Label ID="lblUsername" runat="server" />

            <br />

            <asp:Label ID="lblLoginTime" runat="server" /> 
            
            <br />

            <asp:LoginStatus ID="LoginStatus" runat="server" LogoutText="Logout" />
        </td>
    </tr>
</table>