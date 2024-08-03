<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication1.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .heading {
    margin-top: 96px;
        }
        .cate-product-name{
            display:inline;
    color: whitesmoke;
    margin: 0px 0px 0px 34px;
    padding: 0px 10px 0px 10px;
    font-size: 26px;
    border-radius: 10px;
    border: 3px solid #d3ad7f;

        }

        .addbutton{
    background-color: #a77a44;
    height: 28px;
    width: 102px;
    border-radius: 10px;
    font-weight: bold;
    color: whitesmoke;
    margin-top: 11px;
    cursor:pointer;

        }
        .addbutton:hover{
            color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="heading"> our <span>products</span> </div>

    <div class="cate-product-name">Coffee Beans</div>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" Height="216px" RepeatColumns="3" Width="16px" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <br />
            <section class="products" id="products">


    <div class="box-container">

        <div class="box">
            <div class="image">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" ImageUrl='<%# Eval("pro_image") %>'
                  PostBackUrl='<%# Eval("pro_id","Productdetails.aspx?ProId={0}") %>' Width="130px"  />
            </div>
            <div class="content">
                <h3>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("pro_name") %>'></asp:Label></h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <div  class="price">
                    <div>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("pro_price") %>'></asp:Label>
                        </div>
                    <div class="pro_mrp">
                        <asp:Label ID="Label3"  runat="server" Text='<%# Eval("pro_mrp") %>'></asp:Label>
                        
                    </div>

                </div>
                <asp:Button ID="Button1" class="addbutton" runat="server" Text="Buy Now"  CommandArgument='<%# Eval("pro_id")%>' CommandName="addtocart" />
            </div>
        </div>
    </div>

</section>

        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterConnection %>" SelectCommand="SELECT * FROM [addproduct]"></asp:SqlDataSource>

</asp:Content>
