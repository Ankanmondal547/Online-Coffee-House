<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="WebApplication1.Add_Cart.addtocart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
	<style>
		h2{
		margin: 83px 0px 20px 0px;
		color: whitesmoke;
		font-size: 36px;
		}
		#ContentPlaceHolder1_Button1{
		margin: 18px;
        height: 29px;
        width: 89px;
        border-radius: 10px;
        font-size: 16px;
        font-weight: bold;
        color: #000000;
        background-color: whitesmoke;
		}
		#ContentPlaceHolder1_Button1:hover{
	    background-color:green;
		cursor:pointer;
		}
		a{
		color: red;
		font-size: 12px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div align="center">
	<h2>Your Cart Product</h2>
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="No Product added" ForeColor="#333333" Width="526px" Height="12px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.NO">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pro_id" HeaderText="Product ID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pro_name" HeaderText="Product Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="pro_image" HeaderText="Product Image" ControlStyle-Height="148" ControlStyle-Width="145">
                <ItemStyle HorizontalAlign="Center" />
            </asp:ImageField>
            <asp:BoundField DataField="pro_price" HeaderText="Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
		<br />
		<a href="Products.aspx"> Click here to continous shopping --></a>
		<br />
		<asp:Button ID="Button1" runat="server" Text="Pay Now" OnClick="Button1_Click" />
		</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

</asp:Content>
