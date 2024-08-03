<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">

        *{
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
            
        }
        body{
            min-height: 100vh;
            background: #eee;
        }
        .logindiv{
            margin: auto;
            width: 500px;
            max-width: 90%;
            margin-top: 10%;
            margin-bottom: 10%;
            border:1px solid;
            height: 100%;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 8px 16px rgb(0,0,0,.3);

        }
        form{

        }
        h1{
            text-align: center;
            margin-bottom: 20px;
            color: aqua;
        }

        .userinput{
            width: 100%;
            height: 40px;
            background-color: white;
            border-radius: 4px;
            border: 1px solid silver;
            margin: 10px 0 18px 0;
            padding: 0 10px;
        }
        .logindiv label{
            font-size: 20px;
            font-weight: bold;
        }
        .btn-login{
            margin-left: 40%;
    width: 100px;
    height: 34px;
    border-radius: 18px;
    font-weight:bold;

        }

        .btn-login:hover{
            background-color:forestgreen;
        }

        .sign-in  a{
            text-decoration: none;
            margin-left: 65%;
            display: inline-flex;
            color: #383efb;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="logindiv">

        <h1>Hello,World</h1>
        <div>
        <label for="">Email :</label>
        <br>
            <asp:TextBox ID="logemail" runat="server" type="email" class="userinput" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="logemailvali" runat="server" ErrorMessage="Please Entery the Email" ControlToValidate="logemail" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>
        <div>
        <label for="">Password:</label>
        <br>
            <asp:TextBox ID="logpass" runat="server" Class="userinput"></asp:TextBox>
            <asp:RequiredFieldValidator ID="logpassvali" runat="server" ErrorMessage="please Entery the Password" ControlToValidate="logpass" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:Label ID="loginerror" runat="server" ForeColor="Red"></asp:Label>
    </div>
    <asp:Button ID="Button1" runat="server" class="btn-login" Text="Button" OnClick="submit_login" />

    <div class="sign-in">
        <a href="Register.aspx">click here your sgin in</a>
        </div>

</div>
</asp:Content>
