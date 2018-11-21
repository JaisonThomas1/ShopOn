<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="Aupdate.aspx.cs" Inherits="Aupdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<table align="center">
                                <tr>
                                    <td class="size-205" style="width: 231px">&nbsp;</td><td style="width: 247px">
                                        </td>
                                    <td>
                                        </td>
                                </tr>
                                <tr>
                                    <td class="size-205" style="width: 231px; height: 59px;">&nbsp
                                        <asp:Label ID="Label3" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Item Name"></asp:Label></td>
                                    <td style="height: 59px; width: 247px;">
                                        <asp:TextBox ID="TextBox1" runat="server" class="bor17 of-hidden" placeholder="     Enter item Name" 
                                                Height="34px" Width="201px"></asp:TextBox></td>
                                    <td style="width: 135px; height: 59px;">
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
                                    <td style="width: 135px; height: 59px;">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td class="size-205" style="width: 231px; height: 59px;">&nbsp
                                        <asp:Label ID="Label5" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Price"></asp:Label></td>
                                    <td style="height: 59px; width: 247px;">
                                    <asp:TextBox ID="TextBox5" runat="server" class="bor17 of-hidden" placeholder="     (per kg/packet)" 
                                                Height="34px" Width="201px" TextMode="Number"></asp:TextBox>
                                    </td>
                                    <td style="width: 135px; height: 59px;">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td class="size-214" style="width: 231px; height: 59px;">&nbsp
                                        <asp:Label ID="Label6" runat="server" class="bt mtext-102 stext-106 trans-04" Text="Additional quantity"></asp:Label></td>
                                    <td style="height: 34px; width: 247px;">
                                        <asp:TextBox ID="TextBox6" runat="server" class="bor17 of-hidden" placeholder="     (in kg/packet)" 
                                                Height="34px" Width="201px" MaxLength="10" TextMode="Number"></asp:TextBox></td>
                                    <td style="width: 135px; height: 34px;">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td class="size-205" style="width: 231px">&nbsp;</td><td style="width: 247px"></td><td></td>
                                </tr>
                                <tr>
                                    <td class="size-205" style="width: 231px">
                                        &nbsp;</td>
                                    <td style="width: 247px">
                                        <asp:Button ID="Button15" runat="server" class="stext-101 cl0 size-104a bg1 bor1" 
                                        Text="Update" Height="35px" Width="80px" onclick="Button15_Click" />
                                       </td>
                                    <td style="width: 135px">
                                   </td>
                                </tr>
                               
                        </table>
                        <br />
</asp:Content>

