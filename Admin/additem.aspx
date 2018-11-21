<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="additem.aspx.cs" Inherits="Admin_additem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<br />
        <table align="center" 
        style="border: 3px solid #181720">
        <tr>
            <td class="size-205" style="width: 231px">&nbsp;</td><td style="width: 247px">
                <asp:Label ID="Label5" runat="server" Text="Use another username" 
                    ForeColor="Red" Visible="False"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label1" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Item Name"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
                <asp:TextBox ID="TextBox1" runat="server" class="bor17 of-hidden" placeholder="     Enter item Name" 
                        Height="34px" Width="201px"></asp:TextBox></td>
            <td style="width: 135px; height: 59px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label2" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Category"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
                <asp:TextBox ID="TextBox2" runat="server" class="bor17 of-hidden" placeholder="     Enter category Name" 
                        Height="34px" Width="201px"></asp:TextBox></td>
            <td style="width: 135px; height: 59px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label4" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Price"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
            <asp:TextBox ID="TextBox4" runat="server" class="bor17 of-hidden" placeholder="     (per kg/packet)" 
                        Height="34px" Width="201px" TextMode="Number"></asp:TextBox>
            </td>
            <td style="width: 135px; height: 59px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-214" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label6" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Available quantity"></asp:Label></td>
            <td style="height: 34px; width: 247px;">
                <asp:TextBox ID="TextBox6" runat="server" class="bor17 of-hidden" placeholder="     (in kg/packet)" 
                        Height="34px" Width="201px" MaxLength="10" TextMode="Number"></asp:TextBox></td>
            <td style="width: 135px; height: 34px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-214" style="width: 231px; height: 59px;">&nbsp
                <asp:Label ID="Label7" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Upload Image"></asp:Label></td>
            <td style="height: 34px; width: 247px;">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td style="width: 135px; height: 34px;">
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
Text="Add" Height="35px" Width="80px" onclick="createbtn_Click" /></td>
            <td style="width: 135px">
            <asp:Button ID="resetbtn" runat="server" class="stext-101 cl0 size-104a bg1 bor1" 
Text="Reset" Height="35px" Width="80px" CausesValidation="False" onclick="resetbtn_Click" /></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 231px">&nbsp;</td><td style="width: 247px"></td><td></td>
        </tr>
    </table>
    <br />

</asp:Content>

