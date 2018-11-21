<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="userregi.aspx.cs" Inherits="userregi" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

<br />
        <table align="center" 
        style="border: 3px solid #333333">
        <tr>
            <td class="size-205" style="width: 231px">&nbsp;</td><td style="width: 247px">
                <asp:Label ID="Label5" runat="server" Text="Use another username" 
                    ForeColor="Red" Visible="False"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label1" runat="server" class="bt mtext-102 stext-106 trans-04" Text="First Name"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
                <asp:TextBox ID="TextBox1" runat="server" class="bor17 of-hidden" placeholder="     Enter First Name" 
                        Height="34px" Width="201px"></asp:TextBox></td>
            <td style="width: 135px; height: 59px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label2" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Last Name"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
                <asp:TextBox ID="TextBox2" runat="server" class="bor17 of-hidden" placeholder="     Enter Last Name" 
                        Height="34px" Width="201px"></asp:TextBox></td>
            <td style="width: 135px; height: 59px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label3" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Address"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
                <asp:TextBox ID="TextBox3" runat="server" class="" placeholder="     Enter Address" 
                        Height="112px" Width="201px" TextMode="MultiLine" BorderColor="Silver" 
                    BorderStyle="Solid" BorderWidth="1px"></asp:TextBox></td>
            <td style="width: 135px; height: 59px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label4" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Pin"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
                <asp:TextBox ID="TextBox4" runat="server" class="bor17 of-hidden" placeholder="     Enter Pin" 
                        Height="34px" Width="201px" MaxLength="6" TextMode="Number"></asp:TextBox></td>
            <td style="width: 135px; height: 59px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-214" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label6" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Username(Mobile No)"></asp:Label></td>
            <td style="height: 34px; width: 247px;">
                <asp:TextBox ID="TextBox6" runat="server" class="bor17 of-hidden" placeholder="     (Excluding +91)" 
                        Height="34px" Width="201px" MaxLength="10" TextMode="Number"></asp:TextBox></td>
            <td style="width: 135px; height: 34px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-214" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label7" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Password"></asp:Label></td>
            <td style="height: 34px; width: 247px;">
                <asp:TextBox ID="TextBox7" runat="server" class="bor17 of-hidden" placeholder="     Enter password" 
                        Height="34px" Width="201px" TextMode="Password"></asp:TextBox>
                <cc1:PasswordStrength ID="PasswordStrength1" runat="server" 
                    MinimumNumericCharacters="2" MinimumUpperCaseCharacters="1" 
                    TargetControlID="TextBox7">
                </cc1:PasswordStrength>       
            </td>
            <td style="width: 135px; height: 34px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox7"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-214" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label8" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Confirm password"></asp:Label></td>
            <td style="height: 34px; width: 247px;">
                <asp:TextBox ID="TextBox8" runat="server" class="bor17 of-hidden" placeholder="     Enter confirm password" 
                        Height="34px" Width="201px" TextMode="Password"></asp:TextBox></td>
            <td style="width: 135px; height: 34px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="*Password doesnot match" ControlToCompare="TextBox7" 
                    ControlToValidate="TextBox8" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px">&nbsp;</td><td style="width: 247px"></td><td></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px">
                &nbsp;</td>
            <td style="width: 247px">
               <asp:Button ID="createbtn" runat="server" class="stext-101 cl0 size-104a bg1 bor1" 
Text="Create" Height="35px" Width="80px" onclick="createbtn_Click" /></td>
            <td style="width: 135px">
            <asp:Button ID="resetbtn" runat="server" class="stext-101 cl0 size-104a bg1 bor1" 
Text="Reset" Height="35px" Width="80px" CausesValidation="False" onclick="resetbtn_Click" /></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px">&nbsp;</td><td style="width: 247px"></td><td></td>
        </tr>
    </table>
    <br />
    
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
</asp:Content>

