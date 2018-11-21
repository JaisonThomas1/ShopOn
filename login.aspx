<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <table align="center" style="width: 50%; border: 2px solid #333333">
        <tr>
            <td>
            
                <table align="center" 
                    style="width: 100%; float: left;">
                    <tr><td>&nbsp</td></tr>
                    <tr>
                        <td>&nbsp
                            <asp:Label ID="Label3" runat="server" class="mtext-106 cl2 js-name-detail p-b-14" Text="Username"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" class="bor17 of-hidden" placeholder="     Enter username" Height="34px" Width="201px" MaxLength="10"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr><td>&nbsp</td></tr>
                    <tr>
                        <td>&nbsp
                            <asp:Label ID="Label4" runat="server" class="mtext-106 cl2 js-name-detail p-b-14" Text="Password"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" class="bor17 of-hidden" Textmode="Password" placeholder="     Enter password" Height="34px" Width="201px"></asp:TextBox></td>
                        <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*cannot be empty" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr><td>&nbsp</td></tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Login" class="stext-101 cl0 size-103 bg1 bor1" CausesValidation="true"
                    onclick="Button1_Click"/></td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="*Username or Password incorrect" ForeColor="Red" Visible="False"></asp:Label></td>
                    </tr>
                    <tr><td>&nbsp</td></tr>
                </table>

            </td>
        </tr>
    </table>
    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
    <br />    
</asp:Content>

