<%@ Page Title="" Language="C#" MasterPageFile="~/EMasterPage.master" AutoEventWireup="true" CodeFile="Ehome.aspx.cs" Inherits="Ehome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h4 class="stext-301 cl2 p-b-30">
	    Items to be delivered ‾↓
	</h4>
<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cartt">
                            <tr class="table_head">	
									<th class="column-5">PName</th>
									<th class="column-5">Qty</th>
									<th class="column-5">Total</th>
									<th class="column-5">Cmpn</th>
                                    <th class="column-5">UID</th>
								    <th class="column-5">Addr</th>
                                    <th class="column-5">PIN</th>
                                    <th class="column-5">Mob</th>
                                    <th class="column-5">Delivery</th>
                                </tr>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="uid" 
        DataSourceID="SqlDataSource1" RepeatColumns="8" RepeatLayout="Flow">
        <ItemTemplate>

				<tr class="">
					<td class="column-5">
						<asp:Label ID="Label5" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
					</td>
					<td class="column-5"><asp:Label ID="Label1" runat="server" Text='<%# Eval("qty") %>'></asp:Label></td>
					<td class="column-5"><asp:Label ID="Label2" runat="server" Text='<%# Eval("total") %>'></asp:Label></td>
					<td class="column-5">
                    	<asp:Label ID="Label3" runat="server" Text='<%# Eval("cmpn") %>'></asp:Label>	
					</td>
					<td class="column-5"><asp:Label ID="Label4" runat="server" Text='<%# Eval("uid") %>'></asp:Label></td>
                    <td class="column-5"><asp:Label ID="Label6" runat="server" Text='<%# Eval("address") %>'></asp:Label></td>
                    <td class="column-5"><asp:Label ID="Label7" runat="server" Text='<%# Eval("pin") %>'></asp:Label></td>
                    <td class="column-5"><asp:Label ID="Label8" runat="server" Text='<%# Eval("contact") %>'></asp:Label></td>
                    <td class="column-5"><a href="Edeli.aspx?uid=<%# Eval("uid") %>" class="bg0 bor2 hov-btn1">Done</a></td>
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
        SelectCommand="SELECT p.id,c.uid,p.pname,c.qty,c.total,p.cmpn,s.address,s.pin,s.contact FROM products p,cart c,shipping s WHERE p.id = c.pid and c.uid = s.uid and purchased='yes' and selled='no'">
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" 
        Visible="False" />
</asp:Content>

