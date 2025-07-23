<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="groceryaspx.aspx.cs" Inherits="www.Megamart.com.groceryaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GROCERY</title>
    <link href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet" />
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
    margin-left:290px;
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
        <h1><u> MEGAMART  GROCERY  STORE </u></h1>
         </div>
        <div class="gallery">

             <div class="content">
                <img src="sunfloweroil.jpg"alt="oil" />
                <h3> <asp:Label ID="sunflowername" runat="server" Text="Sunflower Oil" ></asp:Label></h3>
<p> Price :<asp:Label ID="oillabel1" runat="server" Text=" "></asp:Label>/Liter</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                 <asp:Label ID="oilpricelabel10" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="oiltextbox1" runat="server" placeholder="Liters" TextMode="Number" ValidationGroup="oil"  ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="oiltextbox1" ForeColor="Red" ValidationGroup="oil"></asp:RequiredFieldValidator>   </div>
                 <br />
                <asp:Button ID="oilbutton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="oil" OnClick="oilbutton1_Click" />
            </div>



             <div class="content">
                <img src="sugar.jpg" alt="apple" />
                <h3><asp:Label ID="sugarname" runat="server" Text="SUGAR" ></asp:Label></h3>
              <p>Price :  <asp:Label ID="sugarlabel2" runat="server" Text=" "></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star  checked" ></i></li> 
                </ul>
                 <asp:Label ID="sugarlabel3qua" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="sugarquatextbox2" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="sugar" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="sugarquatextbox2" ForeColor="Red" ValidationGroup="sugar"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="sugarbutton2" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="sugarbutton2_Click" ValidationGroup="sugar" />
            </div>







             <div class="content">
                <img src="chanadal.jpg" alt="banana" />
                <h3><asp:Label ID="chanadalname" runat="server" Text="CHANADAL" ></asp:Label></h3>
              <p> Price :  <asp:Label ID="dalLabel1" runat="server" Text= " "></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                   
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star " ></i></li> 
                </ul>
                 <asp:Label ID="dalLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="dalTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="dal" ></asp:TextBox>  <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="dalTextBox1" ForeColor="Red" ValidationGroup="dal"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="chanadalButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="dal" OnClick="chanadalButton1_Click" />
            </div>




            

             <div class="content">
                <img src="chill.jpg" alt="chilli" />
                <h3><asp:Label ID="chilliname" runat="server" Text="CHILLIPOWER" ></asp:Label></h3>
            <p> Price :    <asp:Label ID="chilliLabel1" runat="server" Text=" "></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star  checked" ></i></li> 
                </ul>
                 <asp:Label ID="chilliLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="chilliTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="chilli" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Enter Quantity " ControlToValidate="chilliTextBox1" ForeColor="Red" ValidationGroup="chilli"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="chilliButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="chilli" OnClick="chilliButton1_Click" />
            </div>




            

             <div class="content">
                <img src="salt.jpg" alt="salt" />
                <h3><asp:Label ID="saltname" runat="server" Text="SALT" ></asp:Label></h3>
            <p> Price :    <asp:Label ID="saltLabel1" runat="server" Text=" "></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                 <asp:Label ID="saltLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="saltTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="salt" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="saltTextBox1" ForeColor="Red" ValidationGroup="salt"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="saltButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="saltButton1_Click" ValidationGroup="salt" />
            </div>







             <div class="content">
                <img src="palli.jpg" alt="groundnut" />
                <h3><asp:Label ID="groundnutname" runat="server" Text="GROUNDNUT" ></asp:Label></h3>
             <p>Price :   <asp:Label ID="groundnutLabel1" runat="server" Text=" "></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                 <asp:Label ID="groundLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="groundTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="ground" ></asp:TextBox>  <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="groundTextBox1" ForeColor="Red" ValidationGroup="ground"></asp:RequiredFieldValidator></div>
                 <br />
                <asp:Button ID="groundButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="ground" OnClick="groundButton1_Click" />
            </div>




            
             <div class="content">
                <img src="3roses.jpg" alt="teapower" />
                <h3><asp:Label ID="threerosename" runat="server" Text="3ROSES" ></asp:Label></h3>
              <p> Price :  <asp:Label ID="teaLabel1" runat="server" Text=" "></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                 <asp:Label ID="teaLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="teaTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="tea" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="teaTextBox1" ForeColor="Red" ValidationGroup="tea"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="teaButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="tea" OnClick="teaButton1_Click" />
            </div>



             
             <div class="content">
                <img src="colgate.jpg" alt="colgate" />
                <h3><asp:Label ID="colgatename" runat="server" Text="COLGATE" ></asp:Label></h3>
              <p> Price :  <asp:Label ID="colgateLabel1" runat="server" Text=" "></asp:Label>/300g</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                 <asp:Label ID="colagateLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="colgateTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="colgate" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="colgateTextBox1" ForeColor="Red" ValidationGroup="colgate"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="cplgateButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="colgate" OnClick="cplgateButton1_Click" />
            </div>

        


            

             
             <div class="content">
                <img src="tide.jpg" alt="grapes" class="auto-style1" />
                <h3><asp:Label ID="tidename" runat="server" Text="TIDE (detergent power)" ></asp:Label></h3>
              <p> Price :  <asp:Label ID="tideLabel1" runat="server" Text=" "></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star  checked" ></i></li> 
                </ul>
                 <asp:Label ID="tideLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="tideTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="tide" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="tideTextBox1" ForeColor="Red" ValidationGroup="tide"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="Buttontide1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="tide" OnClick="Buttontide1_Click" />
            </div>





             
             <div class="content">
                <img src="lux.jpg" alt="lux soap" />
                <h3><asp:Label ID="luxname" runat="server" Text="LUX" ></asp:Label></h3>
             <p> Price :   <asp:Label ID="luxLabel1" runat="server" Text=" "></asp:Label>/1 soap cake</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star " ></i></li> 
                </ul>
                 <asp:Label ID="luxLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="luxTextBox1" runat="server" placeholder="Number" TextMode="Number" ValidationGroup="lux" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="luxTextBox1" ForeColor="Red" ValidationGroup="lux"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="luxButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="luxButton1_Click" ValidationGroup="lux" />
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
            <asp:Button ID="cooldrinkslink" width="500px" runat="server" ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Cooldrinks Store" OnClick="grocerylink_Click" />
           <br />
           <br />
            <asp:Button ID="fruitslink" width="500px" runat="server"  ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Fruits store" OnClick="cooldrinkslink_Click" />
           <br />
           <br />
           <asp:Button ID="btnprocess" Width="500px" ForeColor="White" Font-Bold="true" BackColor="#000066" runat="server" Text="Click for bill process" OnClick="btnprocess_Click" />
       </div>




          <div>
             <a class="talk" href="assistant1.html">MEGAMART ASSISTANT  </a>
        </div>
        





   <div id="vir">
           <a  href="assistant1.html" ><img src="voice.jpg" class="auto-style1" /> </a>
        </div>









    </form>
</body>
</html>
