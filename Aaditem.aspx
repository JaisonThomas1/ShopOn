<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="Aaditem.aspx.cs" Inherits="Aaditem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<br />
    <table align="center" 
        style="border: 1px solid #2F3337; height: 221px; width: 599px;">
        <tr>
            <td class="size-205" style="width: 250px">
                &nbsp;</td>
            <td style="width: 284px">
                &nbsp;</td>
            <td style="width: 215px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="size-205" style="width: 250px">&nbsp;
                <asp:Label ID="Label1" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Item Name"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
                <asp:TextBox ID="TextBox1" runat="server" class="bor17 of-hidden" placeholder="     Enter item Name" Height="34px" Width="201px"></asp:TextBox></td>
            <td style="height: 50px; width: 215px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 250px">&nbsp;
                <asp:Label ID="Label2" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Category"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
            <div class="size-204 respon6-next">
			    <div class="rs1-select2 bor8 bg0">
                <asp:DropDownList ID="DropDownList1" runat="server" class="js-select2">
                    <asp:ListItem Value="vg" Text="Vegetables" Selected="True"></asp:ListItem>
                    <asp:ListItem Value="nvg" Text="Non-Veg"></asp:ListItem>
                    <asp:ListItem Value="cp" Text="Curry powders"></asp:ListItem>
                    <asp:ListItem Value="r" Text="Rice"></asp:ListItem>
                    <asp:ListItem Value="p" Text="Plates"></asp:ListItem>
                    <asp:ListItem Value="kf" Text="Kids food"></asp:ListItem>
                    <asp:ListItem Value="ci" Text="Cleaning items"></asp:ListItem>
                    <asp:ListItem Value="e" Text="Electronics"></asp:ListItem>
                </asp:DropDownList>
					
    				<div class="dropDownSelect2"></div>
				</div>
			</div>
                
            </td>
            <td style="width: 215px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" 
                    ControlToValidate="DropDownList1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 250px">&nbsp;
                <asp:Label ID="Label3" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Price"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
                <asp:TextBox ID="TextBox3" runat="server" class="bor17 of-hidden" placeholder="     (per kg/packet)" TextMode="Number" Height="34px" Width="201px"></asp:TextBox></td>
            <td style="width: 215px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 250px">&nbsp;
                <asp:Label ID="Label4" runat="server" class="bt mtext-102 stext-106 trans-04" Text="   Available quantity" TextMode="Number" Height="34px" Width="201px"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
                <asp:TextBox ID="TextBox4" runat="server" class="bor17 of-hidden" placeholder="     (per kg/packet)" Height="34px" Width="201px"></asp:TextBox></td>
            <td style="width: 215px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 250px">&nbsp;
                <asp:Label ID="Label6" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Company Name"></asp:Label></td>
            <td style="height: 59px; width: 247px;">
                <asp:TextBox ID="TextBox2" runat="server" class="bor17 of-hidden" placeholder="     Enter company Name" Height="34px" Width="201px"></asp:TextBox></td>
            <td style="height: 50px; width: 215px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 250px; height: 39px;">&nbsp;
                <asp:Label ID="Label5" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Upload Image"></asp:Label></td>
            <td style="width: 284px; height: 39px;">
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            <td style="width: 215px; height: 39px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 250px; height: 50px;">
                </td>
            <td style="width: 284px; height: 50px;">
                <asp:Button ID="Button1" runat="server" Text="Add" 
                    class="stext-101 cl0 size-104a bg1 bor1" CausesValidation="True"
                    onclick="Button1_Click"/></td>
            <td style="width: 215px; height: 50px;">
                <asp:Button ID="Button2" runat="server" Text="Reset" 
                    class="stext-101 cl0 size-104a bg1 bor1" CausesValidation="False" 
                    onclick="Button2_Click"/></td>
        </tr>
        <tr>
            <td class="size-205" style="width: 250px">
                &nbsp;</td>
            <td style="width: 284px">
                &nbsp;</td>
            <td style="width: 215px">
                &nbsp;</td>
        </tr>
    </table>
<br />
</asp:Content>

