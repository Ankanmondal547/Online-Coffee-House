<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="WebApplication1.Admin.addproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #800000;
            background-color: #C0C0C0;
        }
        .backtohome{
            color:red; 
            cursor:pointer;
            font-size:21px;
        }
            h1{
    justify-content: center;
    display: flex;
    }
    </style>
</head>
<body>
        <h1>Welcome to Add Products Details Page</h1>
    <a href="admin.aspx" class="backtohome">Back To home Page</a>
    <form id="form1" runat="server">
        <div>


            <table class="auto-style1">
                <tr>
                    <td>Product Name </td>
                    <td>
                        <asp:TextBox ID="txtproductname" runat="server" Height="36px" Width="271px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Product Category</td>
                    <td>
                        <asp:TextBox ID="txtproductcategory" runat="server" Height="36px" Width="271px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Product MRP</td>
                    <td>
                        <asp:TextBox ID="txtproductmrp" runat="server" Height="36px" Width="271px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Product Price</td>
                    <td>
                        <asp:TextBox ID="txtproductprice" runat="server" Height="36px" Width="271px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Product Description</td>
                    <td>
                        <asp:TextBox ID="txtproductdesc" runat="server" Height="118px" Width="196px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Product Image</td>
                    <td>
                        <asp:FileUpload ID="productimg" runat="server" Height="38px" Width="279px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server" Text="Add Product" Width="95px" ID="button1" OnClick="button1_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblErrormessage" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridViewaddproduct" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="pro_id" HeaderText="Product ID" InsertVisible="False" ReadOnly="True" SortExpression="pro_id" />
                                <asp:BoundField DataField="pro_name" HeaderText="Product Name" SortExpression="pro_name" />
                                <asp:BoundField DataField="pro_catg" HeaderText="Product Category" SortExpression="pro_catg" />
                                <asp:BoundField DataField="pro_mrp" HeaderText="Product MRP" SortExpression="pro_mrp" />
                                <asp:BoundField DataField="pro_price" HeaderText="Product Price" SortExpression="pro_price" />
                                <asp:BoundField DataField="pro_desc" HeaderText="Product Desc" SortExpression="pro_desc" />
                                <asp:TemplateField HeaderText="Product Image" SortExpression="pro_image">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("pro_image") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="image1" runat="server" ImageUrl='<%# Bind("pro_image") %>' Height="100px" Width="100px"></asp:Image>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />


                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterConnection %>" SelectCommand="SELECT * FROM [addproduct]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
