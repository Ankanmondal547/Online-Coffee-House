<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #Contact{
                  margin-top:63px;
        }
      .Contactbg{
      background:url(../images/pexels-bianca-gasparoto-1752806.jpg);
      width:100%;
      height:320px;
      display: flex;
      align-items: center;
      background-size: cover;
      }

      .Contactbg p {
color: #b16b4a;
    margin: auto;
    font-family: "Dancing Script", cursive;
    font-size: 63px;
    font-weight: bold;
      }
      .contactfoot{
          display:flex;
          background-color:#f1f1f1;
      }
      .contactfoot > div{
            background-color: #f1f1f1;
  width:33.3%;
  height:225px;
      }
      .contactfoot > div > p{
          margin-top:40px;
          margin-left:20px;
          font-weight:bold;
          font-size:35px;
      } 
      .aboutcontact{
          display:flex;
          margin:20px;
      }
      .aboutcontact > p{
          margin-left:25px;
          font-size:13px;
      }
      .contactstyle{
           margin: 20px 0px 15px 20px;
           font-size:13px;
      }
      .directcontactbutton{
          border-radius:10px;
          background-color:#b36d24;
          color:whitesmoke;
          margin-left:20px;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="Contact">
        <div class="Contactbg">
        <p>
            Let's have a talk
        </p>
        </div>
            <div class="contactfoot">
                <div><iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30153.788252261566!2d72.82321484621745!3d19.141690214227783!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b63aceef0c69%3A0x2aa80cf2287dfa3b!2sJogeshwari%20West%2C%20Mumbai%2C%20Maharashtra%20400047!5e0!3m2!1sen!2sin!4v1629452077891!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe></div>
                <div>
                    <p>Meet Us</p>
                    <div class="aboutcontact">
                        <i class="fa fa-phone" style="font-size:15px"></i><p>+91 8447091***</p>     
                    </div>
                    <div class="aboutcontact">
                        <i class="fa fa-envelope" style="font-size:15px"></i><p>ankanmondal547@Gmail.com</p>
                    </div>
                    <div class="aboutcontact">
                        <i class="fa fa-map-marker" style="font-size:15px"></i><p>F-46/A Gali no - 2 Dayal Pur ,Delhi-110094</p>
                    </div>
                </div>
                <div>
                    <p>Pitch Up</p>
                    <div class="contactstyle">Hello,
                        <br /><br />
                        my name is <b>Your name</b> and my e-mail address is <b>your e-mail</b> and I would like to discuss about this project
                    </div>
                    <asp:Button ID="Button1" Class="directcontactbutton " runat="server" Text="Button" Height="25px" Width="65px" />

                </div>
            </div>


    </div>
</asp:Content>
