<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SchoolService.Register" %>

<asp:Content ID="RegisterPage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server"  ContinueDestinationPageUrl="~/login.aspx">
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server">
                        <CustomNavigationTemplate>
                            <table border="0" cellspacing="5" style="width:100%;height:100%;">
                                <tr align="right">
                                    <td align="right" colspan="0">
                                        <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Create User" ValidationGroup="CreateUserWizard1" />
                                    </td>
                                </tr>
                            </table>
                        </CustomNavigationTemplate>
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep runat="server" />
                </WizardSteps>
            </asp:CreateUserWizard>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Go Back to Login</asp:HyperLink>
    </div>
</asp:Content>
