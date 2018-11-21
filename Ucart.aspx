<%@ Page Title="" Language="C#" MasterPageFile="~/UMasterPage.master" AutoEventWireup="true" CodeFile="Ucart.aspx.cs" Inherits="Ucart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
            <!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
                            <tr class="table_head">
									<th class="column-1">Product</th>
									<th class="column-2"></th>
									<th class="column-3">Price</th>
									<th class="column-4">Quantity</th>
									<th class="column-5">Total</th>
								</tr>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatLayout="Flow">
        <ItemTemplate>

				<tr class="">
					<td class="column-1">
						<div class="how-itemcart1">
							<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img") %>' />
						</div>
					</td>
					<td class="column-2"><asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>'></asp:Label></td>
					<td class="column-3">₹ <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label></td>
					<td class="column-4">
                    	<asp:Label ID="Label3" runat="server" Text='<%# Eval("qty") %>'></asp:Label>	
					</td>
					<td class="column-5">₹ <asp:Label ID="Label4" runat="server" Text='<%# Eval("total") %>'></asp:Label></td>
				</tr>
                <tr><td>&nbsp</td></tr>			
        </ItemTemplate>

    </asp:DataList>
        </table>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							Cart Totals<asp:Label ID="Label5" runat="server" Text="( Empty Cart )" class="mtext-109 cl2 p-b-30" ForeColor="Red" Visible="False"></asp:Label>
						</h4>
                        <div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
								    Home address
								</span>
							</div>

							<div class="size-209 bor8 bg0">
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Address/number" class="stext-111 cl8 plh3 size-111 p-lr-15"></asp:TextBox>
							</div>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="*You must enter the value" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <br />
                        <div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
								    PIN
								</span>
							</div>

							<div class="size-209 bor8 bg0">
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="pin" class="stext-111 cl8 plh3 size-111 p-lr-15" MaxLength="6" TextMode="Number"></asp:TextBox>
							</div>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="*You must enter the value" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
						</div>
                        <br />
                        <div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
								    Contact no.
								</span>
							</div>

							<div class="size-209 bor8 bg0">
                                <asp:TextBox ID="TextBox3" runat="server" placeholder="contact" class="stext-111 cl8 plh3 size-111 p-lr-15" MaxLength="10" TextMode="Number"></asp:TextBox>
							</div>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="*You must enter the value" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
						</div>
						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Total:
								</span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2">
									<asp:Label ID="Label7" class="mtext-110 cl2" runat="server" Text=""></asp:Label>
								</span>
							</div>
						</div>
                        <asp:Button ID="Button1" runat="server" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" Text="Checkout" onclick="Button1_Click"/>
					</div>
				</div>
			</div>
		</div>
	</form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" 
        SelectCommand="SELECT p.id,p.img,p.pname,p.price,c.qty,c.total FROM products p,cart c WHERE p.id = c.pid and [uid] = @uid and purchased='no'">
        <SelectParameters>
            <asp:SessionParameter Name="uid" SessionField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

