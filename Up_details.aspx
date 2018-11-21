<%@ Page Title="" Language="C#" MasterPageFile="~/UMasterPage.master" AutoEventWireup="true" CodeFile="Up_details.aspx.cs" Inherits="Up_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatLayout="Flow" DataKeyField="id">
        <ItemTemplate>
        
   

    <!-- Model -->
	<div class="p-t-6 p-b-20">
		<div class="js-hide-modal1"></div>
		<div class="container">
			<div class="bg6 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">

								<div class="slick3 gallery-lb">
										<div class="wrap-pic-w pos-relative">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img") %>' />
											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href='<%# Eval("img") %>'>
												<i class="fa fa-expand"></i>
											</a>
										</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
                            <asp:Label ID="Label1" runat="server" class="mtext-105 cl2 js-name-detail p-b-14" Text='<%# Eval("pname") %>'>
                            </asp:Label>
                            <br />
                            <b>Price (per kg/packet): </b><asp:Label ID="Label2" runat="server" class="mtext-106 cl2" Text='<%# Eval("price") %>' ></asp:Label>
							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Count
									</div>
           </ItemTemplate>

    </asp:DataList>
									<div class="size-204 respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>
                                            <asp:TextBox ID="TextBox1" name="num-product" runat="server" 
                                                class="mtext-104 cl3 txt-center num-product" TextMode="Number" Text="1" ontextchanged="TextBox1_TextChanged" 
                                                ></asp:TextBox>
											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</div>

								</div>
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
                                        <asp:Button ID="Button1" runat="server" Text="Add to cart" 
                                            class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" 
                                            onclick="Button1_Click" CausesValidation="False" />
                                        
                                        
									</div>
								</div>
                             <br /><asp:Label ID="Label3" runat="server" Text="*Insufficient stock" ForeColor="Red" Visible="False"></asp:Label>
                             <br /><asp:Label ID="Label4" runat="server" Text="Item is added to the CART" ForeColor="#00CC00" Visible="False"></asp:Label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" 
        SelectCommand="SELECT * FROM [products] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="pid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

