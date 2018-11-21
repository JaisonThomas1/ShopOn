<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="bg0 p-t-23 p-b-130">
    <div class="container">
        <div class="row isotope-grid">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                RepeatColumns="6" RepeatDirection="Horizontal" DataKeyField="id">
        <ItemTemplate>



            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            pname:
            <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
            <br />
            ctgry:
            <asp:Label ID="ctgryLabel" runat="server" Text='<%# Eval("ctgry") %>' />
<br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            qty:
            <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img") %>' />
            img:
            <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

    </div>
					</div>
				</div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" 
        SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
