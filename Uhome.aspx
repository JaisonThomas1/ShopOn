﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UMasterPage.master" AutoEventWireup="true" CodeFile="Uhome.aspx.cs" Inherits="Uhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<section class="bg0 p-t-23 p-b-130">
		<div class="container">
			<div class="row isotope-grid">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatColumns="6">
        <ItemTemplate>
        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<div class="block2">
						<div class="block2-pic hov-img0">
                            
							<img src='<%# Eval("img") %>' alt="IMG-PRODUCT" height="170" width="30">
                            <a href="Up_details.aspx?pid=<%# Eval("id") %>" 
                                class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">Add to cart
                            </a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
                                <asp:Label ID="Label1" runat="server" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" Text='<%# Eval("pname") %>'></asp:Label>

								<span class="stext-105 cl3">
                                    <asp:Label ID="Label3" runat="server" Text="Rs."></asp:Label>
									<asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label><br />
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("cmpn") %>'></asp:Label>
								</span>
							</div>
						</div>
					</div>
				</div>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </ItemTemplate>
    </asp:DataList>
        </div>
				</div>
                </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" 
        SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
</asp:Content>
