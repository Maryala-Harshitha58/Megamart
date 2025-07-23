<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cosmetics.aspx.cs" Inherits="www.Megamart.com.cosmetics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>COSMETICS</title>
    <style>
        
        body{
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color:white;
    margin:0;
}
.logoimage h1{
    margin-top:-160px;
}
.logoimage{
   
   text-align:center;

}
.logoimage .logom{
    margin-left:250px;
}
h3{
    text-align:center;
    font-size:30px;
    margin:0px;
    padding-top:10px;
}
.gallery{
   display:flex;
   flex-wrap:wrap;
   width:100%;
   justify-content:center;
   align-items:center;
   margin:50px 0;
  
}
.content{
    width:40%;
    margin:15px;
    box-sizing:border-box;
    float:left;
    text-align:center;
    border-radius:20px;
    cursor:pointer;
    padding-top:10px;
    box-shadow:0 14px,28px rgba(0,0,0 0.25),0 10px 10px rgba(0,0,0,0.22);
    transition:.4s;
    background-color:white;
}
.content:hover{
    box-shadow:0 3px 6px rgba(0,0,0,0.16),0 3px 6px rgba(0,0,0,0.23);
    transform:translate(0,-10px);
}
img{
    width:250px;
    height:250px;
    text-align:center;
    margin:0 auto;
    display:block;

}
.maincntrl{
    font-size:20px;
    text-align:center;
    color:green;
    margin:0;
}
ul{
    list-style:none;
    display:flex;
    justify-content:center;
    align-items:center;

}
li{
    padding-top:6px;

}
.fa{
    font-size:26px;
    transition:.4s;
   
}
.checked{
    color:rgb(255, 216, 0);
}
.fa:hover{
    transform:scale(1,3);
    transition:.6s;
}
.buttoncntrl{
    margin-bottom:10px;
    text-align:center;
    font-size:24px;
    color:#fff;
    width:50%;
    padding:15px;
    border:0px;
    outline:none;
    cursor:pointer;
    margin-top:5px;
    border-radius:20px;


}
@media(max-width:1000px){
    .content{
        width:45%;
    }
}
@media(max-width:750px)
{
    .content{
        width:100%;
    }
}
.linking{
    width:40%;
    border-radius:15px;
    margin:0 auto;
   
}


.next{
    margin-left:1000px;
    font-size:19px;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    border-radius:13px;
    width:200px;
}
.prev{
    margin-left:200px;
    font-size:19px;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    border-radius:13px;
    width:200px;
}
  .talk{
    overflow:hidden;
    background-color:black;
    position:fixed;
    margin-left:85%;
    margin-top:35%;
    width:250px;
    padding-top:20px;
    padding-left:55px;
    top:0;
    height:40px;
    cursor:pointer;
    border-radius:20px;
    color:white;
    text-decoration:none;
}

  
#vir a  {
    position:absolute;
    position:fixed;
    left:90%;
   top:60%;
   width:40px;

}
 


        .auto-style1 {
            width: 80px;
            height: 103px;
            margin-top: 30px;
        }
 

 
 


    </style>
</head>
<body>
    <form id="form1" runat="server">
        
         <div class="logoimage">  
         <img src="1663343020745.png"  class="logom" alt="megamartlogo" />
        <h1><u> MEGAMART COSMETICS  STORE </u></h1>
         </div>
        <div class="gallery">
              <div class="content">
                <img src="himalayacream.jpg"alt="Himalayacream" />
                <h3> <asp:Label ID="himalayaname" runat="server" Text="Himalaya  fairness cream"> </asp:Label> </h3>
             <p>Price :   <asp:Label ID="himalayalabel1" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="himalayabutton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="himalayabutton1_Click" />
            </div>




                 <div class="content">
                <img src="yardely.jpg"    alt ="Yardley" />
                <h3><asp:Label ID="yardelypowername" runat="server" Text="Yardely power"> </asp:Label></h3>
              <p> Price :  <asp:Label ID="Label1" runat="server" Text=" "></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="yardelyButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="yardelyButton1_Click1" />
            </div>



            


                 <div class="content">
                <img src="johnsonoil.jpg"       alt ="jhonsonoil" />
                <h3><asp:Label ID="babayoilname" runat="server" Text="Johnson baby oil"> </asp:Label></h3>
            <p> Price :    <asp:Label ID="jhoneLabel2" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="jhonesonButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="jhonesonButton1_Click" />
            </div>



            
                 <div class="content">
                <img src="sparyyardely.jpg"       alt ="spary" />
                <h3> <asp:Label ID="sparynameyardely" runat="server" Text="Yardely perfum"> </asp:Label></h3>
            <p> Price :    <asp:Label ID="sparyLabel2" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="sparyButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="sparyButton1_Click" />
            </div>


            
                 <div class="content">
                <img src="lipstick.jpg"      alt ="lipstock" />
                <h3>  <asp:Label ID="lipstickname" runat="server" Text="Lakme Lipstick"> </asp:Label></h3>
             <p> Price :   <asp:Label ID="lipstickLabel2" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="lipstickButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="lipstickButton1_Click" />
            </div>




            
            
                 <div class="content">
                <img src="lakmecream.jpg"    alt ="lakmecream" />
                <h3><asp:Label ID="lakmecreamname" runat="server" Text=" Lakme body cream"> </asp:Label></h3>
         <p> Price :       <asp:Label ID="lakmecreamLabel2" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="lakmecreamButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="lakmecreamButton1_Click" />
            </div>


            
                 <div class="content">
                <img src="pondsgel.jpg"   alt ="pondsgel" />
                <h3><asp:Label ID="pondsgelname" runat="server" Text="Ponds  moisturizing Gel"> </asp:Label></h3>
             <p>Price :   <asp:Label ID="pondsgelLabel2" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="pondsgelButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="pondsgelButton1_Click" />
            </div>


            <div class="content">
                <img src="nivea2.jpg"   alt ="nivea" />
                <h3>  <asp:Label ID="niveaname" runat="server" Text="Nivea body lotion"></asp:Label> </h3>
            <p> Price :    <asp:Label ID="niveaLabel2" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="niveaButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="niveaButton1_Click" />
            </div>

            
            <div class="content">
                <img src="vaseline.jpg"   alt ="vaseline" />
                <h3><asp:Label ID="vaselinename" runat="server" Text="Vaseline "></asp:Label></h3>
             <p> Price :   <asp:Label ID="vaselineLabel2" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="vaselineButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="vaselineButton1_Click" />
            </div>




            
            <div class="content">
                <img src="eyeliner.jpeg"   alt ="eyeliner" />
                <h3> <asp:Label ID="eyelinername" runat="server" Text="Eye Liner "></asp:Label></h3>
         <p> Price :       <asp:Label ID="eyeLabel2" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="eyeButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="eyeButton1_Click" />
            </div>




        </div>


         <asp:Button ID="buttonprev" cssclass="prev" runat="server"   Text="PREV" OnClick="buttonprev_Click" /> 
             
    

 <asp:Button ID="buttonnext" CssClass="next" runat="server"   Text="NEXT" OnClick="buttonnext_Click" /> 



        

        
       <div class="linking">
          <asp:Button ID="fruitslink" runat="server" width="500px" ForeColor="White"  Font-Bold="true" BackColor="#000066" Text=" Click For Fruits Store" OnClick="vegetablelink_Click" />
           <br />
           <br />
            <asp:Button ID="pharmacylink" runat="server" width="500px" ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Pharmaceutical Store" OnClick="pharmacylink_Click" />
           <br />
           <br />
            <asp:Button ID="vegetableslink" width="500px" runat="server" ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Vegetables Store" OnClick="fruitslink_Click" />
           <br />
           <br />
            <asp:Button ID="grocerylink" width="500px" runat="server" ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Grocery Store" OnClick="grocerylink_Click" />
           <br />
           <br />
            <asp:Button ID="cooldrinkslink" width="500px" runat="server"  ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Cooldrink Store" OnClick="cooldrinkslink_Click" />
           <br />
           <br />
           <asp:Button ID="btnprocess" Width="500px" ForeColor="White" Font-Bold="true" BackColor="#000066" runat="server" Text="Click for bill process" OnClick="btnprocess_Click" />
       </div>

          <div>
             <a class="talk" href="assistant1.html" > MEGAMART ASSISTANT  </a>
        </div>

           <div id="vir">
           <a  href="assistant1.html" ><img src="voice.jpg" class="auto-style1" /> </a>
        </div>
        
    </form>
</body>
</html>
