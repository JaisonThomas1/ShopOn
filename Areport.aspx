<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="Areport.aspx.cs" Inherits="Areport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:Label ID="Label5" runat="server" Text="Total Sales" BorderColor="Blue" BorderStyle="Ridge" BorderWidth="5" Font-Bold="True" Font-Size="20" ForeColor="#0D1A1E"></asp:Label>
<asp:Label ID="Label6" runat="server" Text="" BorderColor="Blue" BorderStyle="Ridge" BorderWidth="5" Font-Bold="True" Font-Size="20" ForeColor="#0D1A1E"></asp:Label>
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
			</div>
		</div>
	</form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" 
        SelectCommand="SELECT p.id,p.img,p.pname,p.price,c.qty,c.total FROM products p,cart c WHERE p.id = c.pid and c.purchased='yes' and c.selled='yes'">
    </asp:SqlDataSource>
</asp:Content>

