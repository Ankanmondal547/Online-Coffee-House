<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');

.wrapper{
  position: relative;
  max-width: 430px;
  width: 100%;
  margin-top: 77px;
  margin-left: 25%;
  background: #fff;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
}
.wrapper h2{
  position: relative;
  font-size: 22px;
  font-weight: 600;
  color: #333;
}
.wrapper h2::before{
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background: #4070f4;
}
.wrapper form{
  margin-top: 30px;
}
.txtbox{
  height: 52px;
  margin: 10px 0;
}
form .input-box input{
  height: 36px;
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 400;
  color: #333;
  border: 1.5px solid #C7BEBE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #4070f4;
}
form .policy{
  display: flex;
  align-items: center;
}
form h3{
  color: #707070;
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}
.input-box.button .register-button{
  color: #fff;
  letter-spacing: 1px;
  border: none;
  background: #4070f4;
  cursor: pointer;
}
.input-box.button .register-button:hover{
  background: #0e4bf1;
}
form .text h3{
 color: #333;
 width: 100%;
 text-align: center;
}
form .text h3 a{
  color: #4070f4;
  text-decoration: none;
}
form .text h3 a:hover{
  text-decoration: underline;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
    <h2>Registration</h2>
        <form action="#">
            <div class="input-box">
                <asp:TextBox ID="txtfirstname" class="txtbox" runat="server" type="text" placeholder="Enter your name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User name can't be empty" ControlToValidate="txtfirstname"></asp:RequiredFieldValidator>
            </div>
            <div class="input-box">
                <asp:TextBox ID="txtemail" class="txtbox" runat="server" type="email" placeholder="Enter your email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Id can't be empty"></asp:RequiredFieldValidator>
            </div>
            <div class="input-box">
                <asp:TextBox ID="txtpassword" class="txtbox" runat="server" type="password" placeholder="Create password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="passwors can't be empty" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
            </div>
            <div class="input-box">
                <asp:TextBox ID="txtConfirmpassword" class="txtbox" runat="server" type="password" placeholder="Confirm password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Confirm password can't be empty" ControlToValidate="txtConfirmpassword"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtConfirmpassword" ErrorMessage="Confirm password and password should be same"></asp:CompareValidator>
            </div>
            <div class="input-box">
                <asp:TextBox ID="txtmobile" class="txtbox" runat="server" type="moblie" placeholder="Enter Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="mobile can't be empty" ControlToValidate="txtmobile"></asp:RequiredFieldValidator>
            </div>
            <div class="policy">
                <asp:CheckBox ID="registercheckbox" runat="server" />
                <h3>I accept all terms & condition</h3>
            </div>
            <div class="input-box button">
                <asp:Button ID="Button1" runat="server" Text="Button" value="Register Now" class="register-button" OnClick="Button1_Click" />
            </div>
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <div class="text">
                <h3>Already have an account? <a href="Login.aspx">Login now</a></h3>
            </div>
        </form>
  </div>
</asp:Content>
