<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CarSticker.aspx.cs" Inherits="CarSticker.CarSticker" %>

<asp:Content ID="CourseInfo" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div>
            <table style="width: 75%; height: 100%;">
                <tr>
                    <td>
                        Student's Name
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        Student's ID
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        Joined Date
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:TextBox ID="txtJoinedDate" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="imgBtnCalendar" runat="server" ImageUrl="~/imgCalendar.png" ImageAlign="AbsBottom" OnClick="imgBtnCalendar_Click" />
                        <asp:Calendar ID="calJoinedDate" runat="server" OnSelectionChanged="calJoinedDate_SelectionChanged" BackColor="White" BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" CellPadding="4" DayNameFormat="Shortest">
                            <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                </tr>

                <tr>
                    <td>
                        Gender
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>
                        Programmed
                    </td>
                    <td>
                        :
                    </td>
                    <td>
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
                    <td>
                        Year of Study
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlYearOfStudy" runat="server">
                            <asp:ListItem>Year 1</asp:ListItem>
                            <asp:ListItem>Year 2</asp:ListItem>
                            <asp:ListItem>Year 3</asp:ListItem>
                            <asp:ListItem>Year 4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>
                        Vehicle's Registration Number
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:TextBox ID="txtVechileRegNum" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        Vehicle's Type
                    </td>
                    <td>
                        :
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlVehicleType" runat="server">
                            <asp:ListItem>Car</asp:ListItem>
                            <asp:ListItem>Motorcycle</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>

            <asp:Label ID="lblInfo" runat="server"></asp:Label>
        </div>
</asp:Content>
