<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CourseInfo.aspx.cs" Inherits="CarSticker.CourseInfo" %>

<asp:Content ID="CourseInfo" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div>
            <asp:Label ID="lblCourseInfo" runat="server">Bachelor program offered by Faculty of Applied Sciences and Computing</asp:Label>

            <br />
            <br />

            <asp:BulletedList ID="bulletCourseInfo" runat="server">
                <asp:ListItem>Bachelor of Information Technology (Honours) in Software Systems Development</asp:ListItem>
                <asp:ListItem>Bachelor of Information Technology (Honours) in Internet Technology</asp:ListItem>
                <asp:ListItem>Bachelor of Information Technology (Honours) in Information Security</asp:ListItem>
                <asp:ListItem>Bachelor of Information Technology (Honours) in Enterprise Information Systems</asp:ListItem>
            </asp:BulletedList>
        </div>

</asp:Content>
