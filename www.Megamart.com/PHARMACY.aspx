<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PHARMACY.aspx.cs" Inherits="www.Megamart.com.PHARMACY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PHARMACY</title>
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
        <h1><u> MEGAMART  PHARMACY  STORE </u></h1>
         </div>

           <div class="gallery">
         <div class="content">
                <img src="paracetomol.jpg" alt="paracetomol" />
                <h3> <asp:Label ID="paracetomolname" runat="server" Text="paracetomol 500mg"></asp:Label>  </h3>
                <p> Price : <asp:Label ID="paralabel1" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
              
                
                <asp:Button ID="parabutton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="parabutton1_Click" />
            </div>





        
         <div class="content">
                <img src="calciumcapsule.jpg" alt="calcium" />
                <h3><asp:Label ID="cakciumname" runat="server" Text="  calcium capsule   "></asp:Label></h3>
            <p> Price :  <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="calciumButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="calciumButton1_Click" />
            </div>



         <div class="content">
                <img src="antisepiccream.jpg" alt="antiseptic" />
                <h3><asp:Label ID="antisepiname" runat="server" Text=" Antiseptic cream   "></asp:Label></h3>
              <p> Price :  <asp:Label ID="Label2" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="antisepticButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="antisepticButton1_Click" />
            </div>






        

         <div class="content">
                <img src="hydraserm.jpg" alt="hydraserm" />
                <h3><asp:Label ID="hydrasermname" runat="server" Text=" Hydraserm20%   "></asp:Label></h3>
              <p>Price :  <asp:Label ID="Label3" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="hydraButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="hydraButton1_Click" />
        

             </div>

        
         <div class="content">
                <img src="vapour.jpg" alt="vapour" />
                   <h3><asp:Label ID="vapourname" runat="server" Text="VapourRub "></asp:Label></h3>
              <p>Price :  <asp:Label ID="vapourLabel4" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                  
             
                <asp:Button ID="vapourButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="vapourButton1_Click" />
            </div>





               
        
         <div class="content">
                <img src="mosDERMcream.jpg" alt="mosderm" />
                <h3><asp:Label ID="cetaphilename" runat="server" Text="Cetaphil moisturizing skincare "></asp:Label></h3>
             <p>  Price :  <asp:Label ID="moisturLabel4" runat="server" Text=""></asp:Label></p> 
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
 
                <asp:Button ID="moistureButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="moistureButton1_Click" />
            </div>
        

        
        
         <div class="content">
                <img src="sermsyrup.jpg" alt="serun" />
                <h3><asp:Label ID="serupname" runat="server" Text=" Obagi syrup "></asp:Label></h3>
              <p>Price :  <asp:Label ID="cetaLabel4" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="cetaphileButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="cetaphileButton1_Click" />
         
             </div>




            
        
        
         <div class="content">
                <img src="vb12.jpg" alt="serun" />
                <h3><asp:Label ID="b12name" runat="server" Text="Vitamin B12 capsule "></asp:Label></h3>
             <p>Price :   <asp:Label ID="vitaLabel5" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="vitaButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="vitaButton1_Click" />
            </div>




        
         <div class="content">
                <img src="dermscarscream.jpg" alt="dermscarscream" />
                <h3><asp:Label ID="dermcream" runat="server" Text="Derm Scars Cream "></asp:Label></h3>
              <p> Price :  <asp:Label ID="scarsLabel5" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="scarsButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="scarsButton1_Click" />
            </div>




        

        
         <div class="content">
                <img src="eno2.jpg" alt="dermscarscream" />
                <h3>  <asp:Label ID="enoname" runat="server" Text="ENO" ></asp:Label></h3>
          <p>Price :      <asp:Label ID="Label5" runat="server" Text=""></asp:Label></p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                <asp:Button ID="Button1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="Button1_Click" />
            </div>

             
           &nbsp;</div>

 <asp:Button ID="buttonprev" cssclass="prev" runat="server"   Text="PREV" OnClick="buttonprev_Click" /> 
             
    

 <asp:Button ID="buttonnext" CssClass="next" runat="server"   Text="NEXT" OnClick="buttonnext_Click" /> 


        
       <div class="linking">
          <asp:Button ID="vegetablelink" runat="server" width="500px" ForeColor="White"  Font-Bold="true" BackColor="#000066" Text=" Click For Vegetable Store" OnClick="vegetablelink_Click" />
           <br />
           <br />
            <asp:Button ID="fruitslink" runat="server" width="500px" ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Fruits Store" OnClick="pharmacylink_Click" />
           <br />
           <br />
            <asp:Button ID="cosmeticslink" width="500px" runat="server" ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Cosmetics Store" OnClick="cosmeticslink_Click" />
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

           <div >
             <a class="talk" href="assistant1.html" >  MEGAMART ASSISTANT </a>
        </div>
        
           <div id="vir">
           <a  href="assistant1.html" ><img src="voice.jpg" class="auto-style1" /> </a>
        </div>

      
    </form>
</body>
</html>
