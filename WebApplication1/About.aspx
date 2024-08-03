<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .first-section{
            background-color:#d78f48;
                        border-radius: 0px 150px 150px 0px;
        }
        .about{
            margin-top:63px;

        }
        .aboutweb{
            display:flex;

        }
        .first-section-about{
            width:50%;
            height:300px;
        }
        .about-img{
            background:url(../images/pexels-fauxels-3183165.jpg);
            background-size: cover;
        }
        .about-heading{
            color:white;
        }
        .about-heading h1{
            text-align:center;
                font-size: 40px;
        }
        .about-heading h3{
            text-align:center;
            font-size: 30px;
    padding: 20px;
        }
        .about-intro{
    font-size: 15px;
    padding: 20px;
    line-height: 1.6;
    color: whitesmoke;

        }
        .second-secction{
            margin:80px;
        }
        .leader{
            display:flex;
        }
        .second-secction-about{
            width:50%;
            height:400px;
            color:whitesmoke;
            margin:77px;
                border: solid 2px
        }
        .second-secction-about > h1,h3,.leader-detalis{
            padding-left:12px;
        }

        .second-secction-about-lastonce{
            width:36%;
            height:400px;
            color:whitesmoke;
            margin:auto;
            border: solid 2px
        }
                .second-secction-about-lastonce > h1,h3,.leader-detalis{
            padding-left:12px;
        }
        .second-secction p{
            padding:40px;
            font-size:30px;
            color:whitesmoke;
            text-align:center;
        }
        .leader-img{
            width:100%;
            height:250px;
            margin-bottom:12px;
        }
        .leader-detalis{
                line-height: 1.5;
    margin-top: 17px;
    font-size: 11px;
        }
        .thrid-section h1{
        color: whitesmoke;
    text-align: center;
    font-size: 60px;
        }

        .hiring-button{
                margin: 36px 0px 40px 45%;
                border-radius:10px;
                width: 93px;
    height: 28px;
    font-weight: bold;
    background: #bd6526;
    color: whitesmoke;
        }
        .team-col{
            display:flex;
        }
        .team-member{
            height:200px;
            width:33.3%;
            margin:60px;
        }
        .team-member-img{
            height:95px;
            width:92px;
            display:block;
                border-radius: 50px;
            margin:auto;

        }
        .div-team-member-img{
            margin-top:20px;
            margin-bottom:20px;
        }
        .team-member-detalis{
                text-align: center;
    padding: 5px;
    font-size: 13px;
    font-weight: bold;
    color: whitesmoke;
        }

        .memo-first{
            display:flex;
            margin: 0px 109px 0px 109px;
        }

        .memo-first-line{
            width:33.3%;
            background-color:red;
            height:264px;
            margin:5px;
        }
        .forth-section > h1{
    text-align: center;
    color: whitesmoke;
    font-size: 40px;
    margin: 48px;
        }
        .memo-second{
            display:flex;
            margin: 0px 218px 0px 218px;
        }

        .memo-second-line{
                        width:50%;
            background-color:red;
            height:264px;
            margin:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- about section starts  -->

    <div class="about">
        <div class="first-section">
            <div class="about-heading">
        <h1>The Art of Coffee Tasting</h1>
        <h3>Provide Best coffee Product in Aisa</h3>
            </div>
           <div class="aboutweb">
               <div class="first-section-about about-img">
               </div>
               <div class="first-section-about about-intro">
                   The primary objective of the Coffee Products Selling Website is to establish an online platform that caters to coffee enthusiasts, offering a diverse and curated selection of coffee-related products. This platform aims to provide users with a seamless and enjoyable shopping experience while fostering a sense of community around the shared love for coffee. By facilitating secure transactions, personalized user accounts, and efficient order management, the website intends to become a go-to destination for individuals seeking quality coffee products.
               </div>
           </div>
        </div>
        <div class="second-secction">
            <p>Meet Our Leadership</p>

            <div class="leader">
            <div class="second-secction-about">
                <asp:Image ID="Image1" class="leader-img" runat="server" ImageUrl="~/images/pexels-nitin-khajotia-1516680.jpg" />
                <h1>Ankan Mondal</h1>
                <h3>CO-Founder & CEO</h3>
                <hr />
                <div class="leader-detalis">Leads the daily operations at Apptopia, including product development and global sales. Jonathan is passionate about people, sports, and really efficient processes.</div>
            </div>
            <div class="second-secction-about">
                            <asp:Image ID="Image2" class="leader-img" runat="server" ImageUrl="~/images/pexels-italo-melo-2379004.jpg" />
            <h1>Suman Ghosh</h1>
            <h3>CO-Founder & CSO</h3>
            <hr />
            <div class="leader-detalis">Leads the daily operations at Apptopia, including product development and global sales. Jonathan is passionate about people, sports, and really efficient processes.</div>
            </div>
            </div>
            <div class="leader">
            <div class="second-secction-about-lastonce">
                            <asp:Image ID="Image5" class="leader-img" runat="server" ImageUrl="~/images/pexels-valon-esati-3938465.jpg" />
            <h1>Ankan Mondal</h1>
            <h3>CO-Founder & CEO</h3>
            <hr />
            <div class="leader-detalis">Leads the daily operations at Apptopia, including product development and global sales. Jonathan is passionate about people, sports, and really efficient processes.</div>
            </div>
            </div> 
        </div>

        <div class="thrid-section">
            <h1>Our Team</h1>
            <asp:Button ID="Button1" class="hiring-button" runat="server" Text="Hiri,Now" Width="97px" />
            <div class="team-col">
                <div class="team-member">
                    <div class="div-team-member-img">
                        <asp:Image ID="Image6" class="team-member-img" runat="server" ImageUrl="~/images/pexels-italo-melo-2379004.jpg"/>
                        </div>
                    <div>
                        <div class="team-member-detalis">Ankan Mondal</div>
                        <div class="team-member-detalis">Senior Data Engineer</div>
                    </div>
                </div>
                <div class="team-member">
                                        <div class="div-team-member-img">
                        <asp:Image ID="Image7" class="team-member-img" runat="server" ImageUrl="~/images/pexels-andrea-piacquadio-3785077.jpg"/>
                        </div>
                    <div>
                        <div class="team-member-detalis">Ankan Mondal</div>
                        <div class="team-member-detalis">Senior Data Engineer</div>
                    </div>
                </div>
                <div class="team-member">
                                        <div class="div-team-member-img">
                        <asp:Image ID="Image8" class="team-member-img" runat="server" ImageUrl="~/images/pexels-nitin-khajotia-1516680.jpg"/>
                        </div>
                    <div>
                        <div class="team-member-detalis">Ankan Mondal</div>
                        <div class="team-member-detalis">Senior Data Engineer</div>
                    </div>
                </div>
            </div>
              <div class="team-col">
      <div class="team-member">
          <div class="div-team-member-img">
              <asp:Image ID="Image9" class="team-member-img" runat="server" ImageUrl="~/images/pexels-andrea-piacquadio-3785077.jpg"/>
              </div>
          <div>
              <div class="team-member-detalis">Ankan Mondal</div>
              <div class="team-member-detalis">Senior Data Engineer</div>
          </div>
      </div>
      <div class="team-member">
                              <div class="div-team-member-img">
              <asp:Image ID="Image10" class="team-member-img" runat="server" ImageUrl="~/images/pexels-nitin-khajotia-1516680.jpg"/>
              </div>
          <div>
              <div class="team-member-detalis">Ankan Mondal</div>
              <div class="team-member-detalis">Senior Data Engineer</div>
          </div>
      </div>
      <div class="team-member">
                              <div class="div-team-member-img">
              <asp:Image ID="Image11" class="team-member-img" runat="server" ImageUrl="~/images/pexels-andrea-piacquadio-3785077.jpg"/>
              </div>
          <div>
              <div class="team-member-detalis">Ankan Mondal</div>
              <div class="team-member-detalis">Senior Data Engineer</div>
          </div>
      </div>
  </div>

        </div>

        <div class="forth-section">
            <h1>Memories</h1>
            <div class="memo-first">
                <asp:Image ID="Image12" class="memo-first-line" runat="server" ImageUrl="~/images/pexels-rfstudio-3810792.jpg"/>
                <asp:Image ID="Image13" class="memo-first-line" runat="server" ImageUrl="~/images/pexels-fauxels-3184423.jpg"/>
                <asp:Image ID="Image14" class="memo-first-line" runat="server" ImageUrl="~/images/pexels-alexander-suhorucov-6457579.jpg"/>
            </div>
             <div class="memo-second">
                 <asp:Image ID="Image19" class="memo-second-line" runat="server" ImageUrl="~/images/pexels-ashford-marx-7150075.jpg"/>
                 <asp:Image ID="Image18" class="memo-second-line" runat="server" ImageUrl="~/images/pexels-helena-lopes-933964.jpg"/>
            </div>
                        <div class="memo-first">
                <asp:Image ID="Image15" class="memo-first-line" runat="server" ImageUrl="~/images/pexels-jopwell-2422294.jpg"/>
                <asp:Image ID="Image16" class="memo-first-line" runat="server" ImageUrl="~/images/pexels-rfstudio-3810788.jpg"/>
                <asp:Image ID="Image17" class="memo-first-line" runat="server" ImageUrl="~/images/pexels-rdne-stock-project-7551442.jpg"/>
            </div>

        </div>
    </div>

<!-- about section ends -->
    <!-- review section starts  -->

<section class="review" id="review">

    <h1 class="heading"> customer's <span>review</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="images/quote-img.png" alt="" class="quote">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi nulla sit libero nemo fuga sequi nobis? Necessitatibus aut laborum, nisi quas eaque laudantium consequuntur iste ex aliquam minus vel? Nemo.</p>
            <img src="images/pic-1.png" class="user" alt="">
            <h3>john deo</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>

        <div class="box">
            <img src="images/quote-img.png" alt="" class="quote">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi nulla sit libero nemo fuga sequi nobis? Necessitatibus aut laborum, nisi quas eaque laudantium consequuntur iste ex aliquam minus vel? Nemo.</p>
            <img src="images/pic-2.png" class="user" alt="">
            <h3>john deo</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
        
        <div class="box">
            <img src="images/quote-img.png" alt="" class="quote">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi nulla sit libero nemo fuga sequi nobis? Necessitatibus aut laborum, nisi quas eaque laudantium consequuntur iste ex aliquam minus vel? Nemo.</p>
            <img src="images/pic-3.png" class="user" alt="">
            <h3>john deo</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>

    </div>

</section>

<!-- review section ends -->
</asp:Content>
