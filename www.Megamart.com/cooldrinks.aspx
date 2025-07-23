<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cooldrinks.aspx.cs" Inherits="www.Megamart.com.cooldrinks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>COOLDRINKS</title>
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
    margin-left:750px;
   
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
        <h1><u> MEGAMART COOLDRINKS  STORE </u></h1>
         </div>
        <div class="gallery">


         
              <div class="content">
                <img src="maza.jpg" alt ="maza" />
                <h3> <asp:Label ID="mazaname" runat="server" Text="Maaza"></asp:Label>     </h3>
             <p> Price :   <asp:Label ID="maazalabel1" runat="server" Text=""></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                  <asp:Label ID="mazzalabel" runat="server" Text="Quantity :"></asp:Label>       
                  
                <asp:TextBox ID="maazabox1" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="maaza" ></asp:TextBox> <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="maazabox1" ForeColor="Red" ValidationGroup="maaza"></asp:RequiredFieldValidator></div> <br />
                  
              
                <asp:Button ID="maazabutton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="maaza" OnClick="maazabutton1_Click" />
            </div>




              <div class="content">
                <img src="cocola.jpg" alt ="cocola" />
                <h3> <asp:Label ID="cocolaname" runat="server" Text="Cocola" ></asp:Label>   </h3>
            <p>Price :    <asp:Label ID="cocolaLabel1" runat="server" Text=""></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                  <asp:Label ID="cocolaLabel2" runat="server" Text="Quantity :"></asp:Label>         
                  <asp:TextBox ID="cocolaTextBox1" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="cococola" ></asp:TextBox> <div>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="cocolaTextBox1" ForeColor="Red" ValidationGroup="cococola"></asp:RequiredFieldValidator> </div> 
                  <br />
              
              
              
                <asp:Button ID="cocolaButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="cococola" OnClick="cocolaButton1_Click" />
            </div>






            


              <div class="content">
                <img src="pepsi.jpg" alt ="pepsi" />
                <h3> <asp:Label ID="pepsiname" runat="server"  Text="Pepsi"></asp:Label>              </h3>
            <p> Price :    <asp:Label ID="pepsiLabel1" runat="server" Text=""></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                  <asp:Label ID="pepsiLabel2" runat="server" Text="Quantity :"></asp:Label>         
                  <asp:TextBox ID="pepsiTextBox1" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="pepsi" ></asp:TextBox>  <div>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="pepsiTextBox1" ForeColor="Red" ValidationGroup="pepsi"></asp:RequiredFieldValidator> </div>
                  <br />
               
                <asp:Button ID="pepsiButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="pepsi" OnClick="pepsiButton1_Click" />
            </div>





            

            


              <div class="content">
                <img src="sevenup.jpg" alt ="sevenup" />
                <h3> <asp:Label ID="sevenupname" runat="server" Text="SevenUP"></asp:Label>   </h3>
              <p>Price :  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                  <asp:Label ID="sevenLabel2" runat="server" Text="Quantity :"></asp:Label>         
                  <asp:TextBox ID="sevenTextBox1" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="seven" ></asp:TextBox>   <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="sevenTextBox1" ForeColor="Red" ValidationGroup="seven"></asp:RequiredFieldValidator>  </div> <br />
               
                <asp:Button ID="sevenButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="seven" OnClick="sevenButton1_Click" />
            </div>


            


              <div class="content">
                <img src="fanta.jpg" alt ="fanta" />
                <h3> <asp:Label ID="fantaname" runat="server"  Text="Fanta"></asp:Label>   </h3>
            <p> Price :    <asp:Label ID="fantaLabel2" runat="server" Text=""></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                  <asp:Label ID="fantaLabel3" runat="server" Text="Quantity :"></asp:Label>         
                  <asp:TextBox ID="fantaTextBox1" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="fanta" ></asp:TextBox>  <div>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="fantaTextBox1" ForeColor="Red" ValidationGroup="fanta"></asp:RequiredFieldValidator>  </div> <br />
                      
              
              
                <asp:Button ID="fantaButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="fanta" OnClick="fantaButton1_Click" />
            </div>




            


              <div class="content">
                <img src="thumpsup.jpg" alt ="thumpsup" />
                <h3><asp:Label ID="thumpsupname" runat="server"  Text="Thumps Up"></asp:Label> </h3>
         <p>Price :       <asp:Label ID="thumpsLabel2" runat="server" Text=""></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                  <asp:Label ID="thumpsLabel3" runat="server" Text="Quantity :"></asp:Label>         
                  <asp:TextBox ID="thumpsupTextBox1" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="up" ></asp:TextBox>  <div>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="thumpsupTextBox1" ForeColor="Red" ValidationGroup="up"></asp:RequiredFieldValidator> </div> <br />
           
              
              
                <asp:Button ID="thumpsupButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="up" OnClick="thumpsupButton1_Click" />
            </div>


            
            


              <div class="content">
                <img src="stinng.jpg" alt ="sting" />
                <h3><asp:Label ID="stingname" runat="server"  Text="Sting"></asp:Label></h3>
          <p>Price :      <asp:Label ID="stingLabel2" runat="server" Text=""></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                  <asp:Label ID="stingLabel3" runat="server" Text="Quantity :"></asp:Label>         
                  <asp:TextBox ID="stingTextBox1" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="sting" ></asp:TextBox> <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="stingTextBox1" ForeColor="Red" ValidationGroup="sting"></asp:RequiredFieldValidator></div>  <br />
 
              
              
                <asp:Button ID="stingButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="sting" OnClick="stingButton1_Click" />
            </div>




            
            


              <div class="content">
                <img src="spirte.jpg"   alt ="sprite" />
                <h3><asp:Label ID="spritename" runat="server"  Text="Sprite"></asp:Label></h3>
        <p> Price :        <asp:Label ID="spriteLabel2" runat="server" Text=""></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                  <asp:Label ID="spriteLabel3" runat="server" Text="Quantity :"></asp:Label>         
                  <asp:TextBox ID="spriteTextBox1" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="sprite" ></asp:TextBox>  <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="spriteTextBox1" ForeColor="Red" ValidationGroup="sprite"></asp:RequiredFieldValidator></div> <br />
                  
              
              
                <asp:Button ID="spriteButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="sprite" OnClick="spriteButton1_Click" />
            </div>





              <div class="content">
                <img src="orangejuice.jpg"   alt ="orangejuice" />
                <h3>     <asp:Label ID="orangename" runat="server" Text=" Orange pulpi"></asp:Label>           </h3>
          <p>Price :      <asp:Label ID="orjuiceLabel2" runat="server" Text=""></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                  <asp:Label ID="orangejuiceLabel3" runat="server" Text="Quantity :"></asp:Label>         
                  <asp:TextBox ID="TextBox1" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="pulpi" ></asp:TextBox>  <div><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="pulpi"></asp:RequiredFieldValidator> </div> <br />
                  
              
              
                <asp:Button ID="orangejuiceButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="orangejuiceButton1_Click" ValidationGroup="pulpi" />
            </div>





            



              <div class="content">
                <img src="mtn2.jpg"   alt ="mountain" />
                <h3>     <asp:Label ID="mtn2nameLabel2" runat="server" Text=" Mountain dew"></asp:Label>           </h3>
          <p> Price :      <asp:Label ID="mtnLabel3" runat="server" Text=""></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul> 
                  <asp:Label ID="mthLabel4" runat="server" Text="Quantity :"></asp:Label>         
                  <asp:TextBox ID="mtnTextBox2" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="dew" ></asp:TextBox>   <div>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="mtnTextBox2" ForeColor="Red" ValidationGroup="dew"></asp:RequiredFieldValidator> </div>  <br />
 
 
              
              
                <asp:Button ID="mountainButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="mountainButton1_Click" ValidationGroup="dew" />
            </div>



        </div>
        
                 <asp:Button ID="buttonprev" cssclass="prev" runat="server"   Text="PREV" OnClick="buttonprev_Click" /> 
             
    

 <asp:Button ID="buttonnext" CssClass="next" runat="server"   Text="NEXT" OnClick="buttonnext_Click" /> 



       <div class="linking">
          <asp:Button ID="vegetablelink" runat="server" width="500px" ForeColor="White"  Font-Bold="true" BackColor="#000066" Text=" Click For Vegetable Store" OnClick="vegetablelink_Click" />
           <br />
           <br />
            <asp:Button ID="pharmacylink" runat="server" width="500px" ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Pharmaceutical Store" OnClick="pharmacylink_Click" />
           <br />
           <br />
            <asp:Button ID="cosmeticslink" width="500px" runat="server" ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Cosmetics Store" OnClick="cosmeticslink_Click" />
           <br />
           <br />
            <asp:Button ID="grocerylink" width="500px" runat="server" ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Grocery Store" OnClick="grocerylink_Click" />
           <br />
           <br />
            <asp:Button ID="fruitslink" width="500px" runat="server"  ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Fruits store" />
           <br />
           <br />
           <asp:Button ID="btnprocess" Width="500px" ForeColor="White" Font-Bold="true" BackColor="#000066" runat="server" Text="Click for bill process" OnClick="btnprocess_Click" />
       </div>

           <div>
             <a class="talk" href="assistant1.html">MEGAMART ASSISTANT </a>
        </div>

           <div id="vir">
           <a  href="assistant1.html" ><img src="voice.jpg" class="auto-style1" /> </a>
        </div>
         
    </form>
</body>
</html>
