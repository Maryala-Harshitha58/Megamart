<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="www.Megamart.com.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOMEPAGE</title>
    <link  rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link href="https://fonts.googleapis.com/css?family=Shadows+Into+Light" rel="stylesheet"/>
    <style>
*{
    margin:0;
    padding:0;
    text-decoration:none;
    transition:all .2s linear;
    outline:none;




}
body{

}
.navbar{
    background:rgb(29,29,29);
    text-align:center;
    border-radius:13px;
}
ul{
    display:inline-flex;
    list-style:none;
    color:#000;
}
ul li{
    width:150px;
    margin:7px;
    padding:9px;
}
ul li a{
    text-decoration:none;
    font-size:16px;
    color:#fff;
    padding:11px, 13px;
    transition:0.5s ease;

}
        ul li a:hover {
            background-color: #fff;
            color: #000;
            border-radius: 2px;
        }
        .textsearch{
            margin-top:12px;
            border-radius:13px;
             height:19px;
            width:200px;
           
        }
        .auto-style1 {
            width: 362px;
            height: 247px;
        }
        .auto-style2 {
            width: 365px;
            height: 232px;
        }
       




html{
    overflow-x:hidden;
}
.container{
    max-width:1200px;
    margin:0 auto;
    padding:3rem 2rem;
}
.container .title{
    font-size:3.5rem;
    color:#444;
    margin-bottom:3rem;
    text-transform:uppercase;
    text-align:center;

}
.container .products-container{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(30rem,1fr));
    gap:9rem;

}
.container .products-container .product{
 
    text-align:center;
    padding:3rem 2rem;
    background:#fff;
    box-shadow:0.5rem 1rem rgba(0,0,0, .1);
    outline-offset: -1.5rem;
    outline: .1cm solid #cce;
    cursor:pointer;
}
.container .products-container .product:hover{
    outline:-1rem solid #222;
    outline-offset: -1.5rem;
}
.container .products-container .product img{
height:230px;
 
}

.container .products-container .product:hover img{
 transform:scale(.9);
 
}

.container .products-container .product h3{
 
 font-size:19px;
 color:#444;
}

.container .products-container .product .button1{
    margin-left:30px;
    margin-top:14px;
    border-radius:12px;
    
 
 
}


.container .products-container .product .button1 :hover{
 
    color:rgb(255, 0, 0);
   
     
}
.talk{
    overflow:hidden;
    background-color:black;
    position:fixed;
    margin-left:85%;
    margin-top:35%;
    width:250px;
    top:0;
    height:60px;
    cursor:pointer;
    border-radius:20px;
    color:white;
    text-decoration:none;
}
#scrol{
    position:absolute;
    top:100px;
    left:70%;
}
#dis{
    position:absolute;
    top:100px;
    left:100px;
}
#dis img{
    width:300px;
}
#vir{
    position:absolute;
    position:fixed;
    left:88%;
   top:65%;
 

}

#back{
    position:absolute;
    top:40%;
    left:5%;
    background-color:blue;
    color:white;
    padding:20px;
    border-radius:13px;
}

    </style>

    <script>
        function search() {
            function speak(sentence) {
                const text_speak = new SpeechSynthesisUtterance(sentence);
                text_speak.rate = 0.75;
                text_speak.pitch = 1;
                window.speechSynthesis.speak(text_speak);
            }
            if (document.getElementById("textsearch").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter product page name or product name ");
            }
        }

    </script>
  
</head>
<body>
    <form id="form1" runat="server">
        <div id="dis">
            <img src="dis2.jpg" alt="discount" />


        </div>

        <div id="scrol" style=" width:400px;height:40px; color:red; border-radius:13px; font-size:35px; padding-top:10px;font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">
            <marquee> NEWYEAR SALES 20% DISCOUNTS AVALIABLE</marquee>
        </div>
        <div class="navbar">
            <ul>
                <li> 
                    <a href="Home.aspx"> <i class="fa fa-home"> </i> HOME</a> </li>
                <li> <a href="About Us.aspx" target="_blank" ><i class="fa fa-id-card" aria-hidden="true"></i>ABOUT US</a> </li>
                <li> <a href="services.aspx" target="_blank" > <i class="fa fa-phone-square" aria-hidden="true"></i>SERVICES</a> </li>
                <li> <a href="feedback.aspx" target="_blank" >    <i class="fa fa-commenting-o" aria-hidden="true"></i> FEEDBACK</a> </li>
                <li> <a href="user.aspx" target="_blank">  <i class="fa fa-user-circle" aria-hidden="true"></i> USER</a> </li>
                <asp:TextBox ID="textsearch"  onfocus="search()" CssClass="textsearch" runat ="server" placeholder="Search" OnTextChanged="textsearch_TextChanged" ></asp:TextBox>
               <%--k <li> <a href="orders.aspx" target="_blank">  <i class="fa fa-shopping-cart" aria-hidden="true"> </i> YOUR ORDERS </a> </li>--%>
            </ul> 
        </div>
        
        <!--items starting -->
        <div class="container">
            <h3 class="title"> MEGASTORE</h3>
                <div class="products-container">
                     <div class="product">
                      <img class="auto-style2" src="itl.cat_vegetable-wallpaper_2917775.png" alt="vegetables" />
                         <h3>VEGETABLES</h3>
                         <div class="button1"> <asp:Button ID="buttonone" runat="server" OnClientClick="target='_blank'"  Width="300px"  Font-Bold="true" ForeColor="White" BackColor="#000066" Text="Let's Buy" OnClick="buttonone_Click"   /> </div>

                     </div>
                       
            
                
             <div class="product">
                    <img class="auto-style1" src="fruits2.jpg" alt="fruits" />
                    <h3>FRUITS</h3>
                    <div class="button1"> <asp:Button ID="button1"  Width="300px" OnClientClick="target='_blank'"  Font-Bold="true" Forecolor="White" runat ="server" BackColor="#000066" Text="Let's Buy" OnClick="button1_Click" />
             </div>
        </div>
               <div class="product">
                    <img class="imgpha" src="pharmacy1.jpeg" alt="pharmacy" />
                    <h3>PHARMACY</h3>
                    <div class="button1"><asp:Button ID="button2" runat="server" OnClientClick="target='_blank'"  Width="300px"  Font-Bold="true" ForeColor="White" BackColor="#000066" Text="Let's Buy" OnClick="button2_Click" />
                  </div>
                </div>
           
                  <div class="product">
                    <img class="imgcos" src="cosmetics1.jpg" alt="fruits"  />
                    <h3>COSMETICS</h3>
                    <div class="button1"> <asp:Button ID="button3" runat="server" OnClientClick="target='_blank'"  CssClass="btncos" Width="300px"  Font-Bold="true" BackColor="#000066" ForeColor="White" Text="Let's Buy" OnClick="button3_Click" />
                 </div>
                </div>
           

                    <!-- started -->




                      <div class="product">
                    <img class="imgcos" src="pngkit_grocery-png_847270.png" alt="fruits"  />
                    <h3>GROCERY</h3>
                    <div class="button1"> <asp:Button ID="button4" runat="server" OnClientClick="target='_blank'"   CssClass="btncos" Width="300px"  Font-Bold="true" BackColor="#000066" ForeColor="White" Text="Let's Buy" OnClick="button4_Click" />
                 </div>
                </div>
           

  <div class="product">
                    <img class="imgcos"  src="cooldrinlks.jpg" alt="fruits"  />
                    <h3>COOLDRINKS</h3>
                    <div class="button1"> <asp:Button ID="button5" runat="server"  OnClientClick="target='_blank'" CssClass="btncos" Width="300px"  Font-Bold="true" BackColor="#000066" ForeColor="White" Text="Let's Buy" OnClick="button5_Click" />
                 </div>
                </div>


           
            <div class="product">
                    <img class="imgcos"  src="electronics.jpg" alt="fruits"  />
                    <h3>ELECTRONICS</h3>
                    <div class="button1"> <asp:Button ID="button6" runat="server" OnClientClick="target='_blank'"  CssClass="btncos" Width="300px" Enabled="false"  Font-Bold="true"   Text="up coming" OnClick="button5_Click" />
                 </div>
                </div>


                      <div class="product">
                    <img class="imgcos"  src="shop2.jpg" alt="fruits"  />
                    <h3>FASHION</h3>
                    <div class="button1"> <asp:Button ID="button7" runat="server" OnClientClick="target='_blank'"  CssClass="btncos" Width="300px" Enabled="false"  Font-Bold="true"   Text="up coming" OnClick="button5_Click" />
                 </div>
                </div>


       <div class="product">
                    <img class="imgcos"  src="phones.png" alt="fruits"  />
                    <h3>MOBILES</h3>
                    <div class="button1"> <asp:Button ID="button8" runat="server" OnClientClick="target='_blank'"  CssClass="btncos" Width="300px" Enabled="false"  Font-Bold="true"   Text="up coming" OnClick="button5_Click" />
                 </div>
                </div>



                    <div class="product">
                    <img class="imgcos"  src="furniture.jpg" alt="fruits"  />
                    <h3>FURNITURE</h3>
                    <div class="button1"> <asp:Button ID="button9" runat="server"  OnClientClick="target='_blank'" CssClass="btncos" Width="300px" Enabled="false"  Font-Bold="true"   Text="up coming" OnClick="button5_Click" />
                 </div>
                </div>






            </div>
           </div>


        <div id="vir">
           <a  href="assistant1.html" ><img src="voice.jpg" style="width:80px;" /> </a>
        </div>

        <div>
            <a class="talk" href="assistant1.html" > <i class="fa fa-shopping-cart" style="margin-top:10%; margin-left:5%;">MEGAMART ASSISTANT</i>  </a>
            <%--<a class="talk" href="assistant1.html" > <img src="voice.jpg" style="width=" /> <i class="fa fa-shopping-cart" style="margin-top:10%; margin-left:5%;">MEGAMART ASSISTANT</i>  </a>--%>
        </div>

        <a  id="back" href="location.aspx" > Back</a>

    </form>
</body>
</html>
