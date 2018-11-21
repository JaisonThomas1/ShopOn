<%@ Page Title="" Language="C#" MasterPageFile="~/AMasterPage.master" AutoEventWireup="true" CodeFile="Aviewe.aspx.cs" Inherits="Aviewe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
                            <tr class="table_head">
									<th class="column-2">First name</th>
									<th class="column-2">Last name</th>
									<th class="column-3">Address</th>
									<th class="column-4">Mobile</th>
									<th class="column-5">Delete</th>
								</tr>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatLayout="Flow">
        <ItemTemplate>
            <tr class="">
					<td class="column-2">
						<div class="">
							<asp:Label ID="Label4" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
						</div>
					</td>
					<td class="column-2"><asp:Label ID="Label1" runat="server" Text='<%# Eval("lname") %>'></asp:Label></td>
					<td class="column-3"><asp:Label ID="Label2" runat="server" Text='<%# Eval("address") %>'></asp:Label></td>
					<td class="column-4">
                    	<asp:Label ID="Label3" runat="server" Text='<%# Eval("uname") %>'></asp:Label>	
					</td>
					<td class="column-5">
                        <a href="Aedelete.aspx?eid=<%# Eval("uname") %>">Delete </a>
                        </td>
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" 
        SelectCommand="SELECT u.fname,u.lname,u.address,u.uname,l.type FROM udetails u,login l where l.uname=u.uname and l.type='e'"></asp:SqlDataSource>
    </form>
</asp:Content>

