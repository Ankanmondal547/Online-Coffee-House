<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Productdetails.aspx.cs" Inherits="WebApplication1.Productdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

    <style>
        .productdetails{
            margin-top:63px;
        }
        .first-section{
            display:flex;
        }
        .first-section-col{
            margin:20px;
            height:400px;
            width:50%;
            color:wheat;
        }
        .product-img{
        margin: 0px 0px 0px 25%;
        height: 300px;
        width: 50%;
        display:block;
        }
        .material-symbols-outlined{
        font-size: 56px;
        margin: 0px 0px 0px 43%;
        }
        #ContentPlaceHolder1_Label1{
        display: block;
        color: pink;
        font-size: 25px;
        font-weight: bold;
        padding-left: 10px;
        margin-top: 20px;
        margin-bottom:15px;
        }
        #ContentPlaceHolder1_Label2{
        margin: 10px;
        font-size: 25px;
        font-weight: bold;
        }
        #ContentPlaceHolder1_Label3{
        font-size: 13px;
        font-weight: bold;

        }
        .product-price{
        display:block;
        }
        .add-to-button{
        margin: 15px 0px 0px 10px
        }
        #ContentPlaceHolder1_Button1{
        background-color: #6bff6b;
        border-radius: 10px;
        border: 2px solid black;
        padding: 7px 15px 7px 15px;
        font-weight: bold;
        cursor: pointer;
        color:black;
        }
        #ContentPlaceHolder1_Button1:hover{
        color:whitesmoke;

        }
        #ContentPlaceHolder1_Button2{
        background-color: #5ce9e2;
        border-radius: 10px;
        border: 2px solid black;
        padding: 7px 15px 7px 15px;
        font-weight: bold;
        cursor: pointer;
        color:black;
        }
        #ContentPlaceHolder1_Button2:hover{
        color:whitesmoke;

        }
        .product-desc{
         font-size: 13px;
        margin: 28px 108px 0px 10px;
        }
        .product-desc-list li{
        font-size: 12px;
        margin: 15px 0px 0px 45px;
        }

        .second-section{
            display:flex;
        }
        .second-section-part{
            margin:20px;
            height:450px;
            width:50%;
            color:wheat;
        }
        .second-section-heading{
        padding: 13px;
        font-size: 20px;
        font-weight: bold;
        }
        .passage{
         padding: 13px;
         font-size: 12px;
        }
        #ContentPlaceHolder1_lblname{
        font-size: 35px;
        color: whitesmoke;
        font-weight: bold;
        }
        #ContentPlaceHolder1_lblprice{
        font-size: 21px;
        color: whitesmoke;
        }
        .rupees{
        font-size: 21px;
        color: whitesmoke;
        display:inline;
        }
        #ContentPlaceHolder1_lblmrp{
        font-size: 13px;
        color: #b90000;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="productdetails">
    <div class="first-section">
        <div class="first-section-col">
            <asp:Image ID="Image1" class="product-img" runat="server"/>
            <span class="material-symbols-outlined">more_horiz</span>
        </div>
        <div class="first-section-col">
            <asp:Label ID="lblname" runat="server" Text="Name OF The Product"  ></asp:Label>
            <br />
            <br />
            <br />
            <div class="product-price">
            <div class="rupees">Rs:</div>
            <asp:Label ID="lblprice" runat="server"></asp:Label>
            <asp:Label ID="lblmrp" runat="server" Font-Strikeout="True"></asp:Label>
                </div>
            <div class="add-to-button">
             <asp:Button ID="Button1" runat="server" Text="BUY NOW" OnClick="Button1_Click" />
             <asp:Button ID="Button2" runat="server" Text="ADD TO CART" OnClick="Button2_Click1"/>
                <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
            </div>
            <div class="product-desc" style="color:whitesmoke;">
                <asp:Label ID="lblProDesc" runat="server" Text="No Description about the product"></asp:Label>
            </div>
            <div class="product-desc-list" style="color:whitesmoke;">
                <ul>
                    <li>Origin:- 80% Thogarihunkal Estate 20% Mandalkhan Estate.</li>
                    <li>Roast Type:- Espresso Roast.</li>
                    <li>Tasting Notes:- Milk chocolate, Cocoa and Jaggery.</li>
                    <li>Recommended for:- Espresso and French press milk coffee.</li>
                    <li>Free shipping across India.</li>
                </ul>
            </div>
        </div>

    </div>
        <div class="second-section" >
            
            <div class="second-section-part">
                                <div class="second-section-heading" style="color:whitesmoke;">Returns</div>
                <div class="passage" style="color:whitesmoke;">
                    Cancellation Policy<br /><br />

Cancellations on coffee orders will be considered if the request is made within 24 hours of placing an order<br />

Returns and Refund Policy<br />

We can’t accept returns on coffee due to its perishable nature. However, we really want you to be happy with your purchase. If you have any issues with your coffee, or if there are errors in your order, please contact us at support@roasterycoffee.co.in within 21 days of receiving your order. We’re happy to help you find something you’ll love or issue a refund.<br />
<br />
Please make sure to include:<br />
<br />
1) Your name<br />
2) Date of purchase<br />
3) The items you would like refunded<br />
4) The reason for the return (optional, but we’ve love to use your feedback to improve our products<br />
                    <br />
Please note:<br /><br />
<ol>
<li>All coffee packets should be returned back to us in case of refund.</li>
<li>All brewing equipment can only be refunded if it is returned back to any of our facilities in new and unused condition</li>
<li>Refunds for coffee subscription purchases will be on prorated based on the number of shipments remaining</li>
<li>Refunds are initiated within 3 days of notification. The amount of time it takes before the money is credit back to the customer's account depends on the clearing cycle of the customer's bank.</li>
</ol> 

</div>
            </div>
            <div class="second-section-part">
    <div class="second-section-heading" style="color:whitesmoke;">Shipping</div>
    <div class="passage" style="color:whitesmoke;">
    We offer shipping to most locations in India.<br /><br />

    Most products will be passed into the hands of the shipper on the same business day if ordered before 9am or the following business day.<br /><br />

    If our logistics partner supports it, we will send you an email with a link where you can track your order. Due to external factors, shipping time is not guaranteed. Shipping and COD fees are non-refundable.
                                 </div></div>

        </div>
        </div>

</asp:Content>
