<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="Achangep.aspx.cs" Inherits="Achangep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <section class="bg0 p-t-10 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
					
						<h4 class="mtext-105 cl2 txt-center p-b-30">
							Change Password
						</h4>

						<div class="bor8 m-b-20 how-pos4-parent">
                            <asp:TextBox ID="TextBox1" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" placeholder="New password" runat="server" TextMode="Password"></asp:TextBox>
			    			<asp:Image ID="Image1" runat="server" class="how-pos4 pointer-none" ImageUrl="~/img/services3.png" height="20" Width="20"></asp:Image>
						</div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="*required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                
						<div class="bor8 m-b-20 how-pos4-parent">
                            <asp:TextBox ID="TextBox2" class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" placeholder="Confirm new password" runat="server" TextMode="Password"></asp:TextBox>
			    			<asp:Image ID="Image2" runat="server" class="how-pos4 pointer-none" ImageUrl="~/img/services3.png" height="20" Width="20"></asp:Image>
					    </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*both must match" ControlToValidate="TextBox2"  ForeColor="Red" ControlToCompare="TextBox1"></asp:CompareValidator>
                        
                        <asp:Button ID="Button1" runat="server" Text="Change Password" 
                            class="stext-101 cl0 size-103 bg1 bor1" onclick="Button1_Click"></asp:Button>
					
				</div>

				<div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
					<div class="flex-w w-full p-b-42">
						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								<asp:Image ID="Image3" runat="server" ImageUrl="~/img/pass.png" Width="400" Height="600"></asp:Image>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>

