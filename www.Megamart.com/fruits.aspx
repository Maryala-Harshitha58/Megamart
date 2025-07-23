<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fruits.aspx.cs" Inherits="www.Megamart.com.fruits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet" />
    <title>FRUITS</title>
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


.linking .vegbtn{
    border-radius:17px;
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
        <h1><u> MEGAMART  FRUITS  STORE </u></h1>
         </div>
        <div class="gallery">

            
             <div class="content">
                <img src="mango.jpg" alt="mango" />
                <h3> <asp:Label ID="mangoname" runat="server" Text="MANGO" ></asp:Label></h3>
             <p>  Price : <asp:Label ID="mangolabel1" runat="server" Text=" "> </asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                 <asp:Label ID="mangopricelabel10" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="mangotextbox1" runat="server" placeholder="Kgs" TextMode="Number" OnTextChanged="mangotextbox1_TextChanged" ValidationGroup="mango" ></asp:TextBox>  <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="mangotextbox1" ForeColor="Red" ValidationGroup="mango"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="mangobutton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="mangobutton1_Click" ValidationGroup="mango" />
            </div>



             <div class="content">
                <img src="apple.jpg" alt="apple" />
                <h3>  <asp:Label ID="applename" runat="server" Text="APPLE" ></asp:Label></h3>
              <p>price :  <asp:Label ID="applelabel2" runat="server" Text=""></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star  checked" ></i></li> 
                </ul>
                 <asp:Label ID="applelabel3qua" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="applequatextbox2" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="apple" ></asp:TextBox>  <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="applequatextbox2" ForeColor="Red" ValidationGroup="apple"></asp:RequiredFieldValidator></div>
                 <br />
                <asp:Button ID="applebutton2" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="applebutton2_Click" ValidationGroup="apple" />
            </div>







             <div class="content">
                <img src="banana.jpg" alt="banana" />
                <h3>  <asp:Label ID="banananame" runat="server" Text="BANANA"></asp:Label> </h3>
             <p>Price :   <asp:Label ID="bananaLabel1" runat="server" Text="price"></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star " ></i></li> 
                </ul>
                 <asp:Label ID="bananaLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="bananaTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="banana" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="bananaTextBox1" ForeColor="Red" ValidationGroup="banana"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="bananaButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="banana" OnClick="bananaButton1_Click" />
            </div>




            

             <div class="content">
                <img src="pineapple.jpg" alt="pineapple" />
                <h3> <asp:Label ID="pineapplename"  runat="server" Text="PINEAPPLE"></asp:Label>  </h3>
               <p> Price : <asp:Label ID="pineLabel1" runat="server" Text="price"></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star  checked" ></i></li> 
                </ul>
                 <asp:Label ID="pineLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="pineTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="pine" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="pineTextBox1" ForeColor="Red" ValidationGroup="pine"></asp:RequiredFieldValidator>  </div>

                                                                                                                 
                 <br />
                <asp:Button ID="pineButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="pine" OnClick="pineButton1_Click" />
            </div>




            

             <div class="content">
                <img src="pomagrante.jpg" alt="pomagrante" />
                <h3> <asp:Label ID="pomagrantename" runat="server" Text="POMAGRANTE"></asp:Label> </h3>
               <p>Price : <asp:Label ID="pomagranteLabel1" runat="server" Text="price"></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                 <asp:Label ID="pomagranteLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="pomagranteTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="poma" ></asp:TextBox> <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="pomagranteTextBox1" ForeColor="Red" ValidationGroup="poma"></asp:RequiredFieldValidator></div>
                 <br />
                <asp:Button ID="pomagranteButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="poma" OnClick="pomagranteButton1_Click" />
            </div>







             <div class="content">
                <img src="strawberry.jpg" alt="strawberry" />
                <h3> <asp:Label ID="strawberryname" runat="server" Text="STRAWBERRY"> </asp:Label> </h3>
               <p> Price : <asp:Label ID="strawLabel1" runat="server" Text="price"></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                 <asp:Label ID="strawLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="strawTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="straw" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="strawTextBox1" ForeColor="Red" ValidationGroup="straw"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="strawButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="straw" OnClick="strawButton1_Click" />
            </div>




            
             <div class="content">
                <img src="papaya.jpg" alt="papaya" />
                <h3> <asp:Label ID="papayaname" runat="server" Text="PAPAYA"></asp:Label> </h3>
               <p> Price : <asp:Label ID="papayaLabel1" runat="server" Text="price"></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                 <asp:Label ID="papayaLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="papayaTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="papaya" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="papayaTextBox1" ForeColor="Red" ValidationGroup="papaya"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="papayaButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="papaya" OnClick="papayaButton1_Click" />
            </div>



             
             <div class="content">
                <img src="orange.jpg" alt="orange" />
                <h3> <asp:Label ID="orangename" runat="server" Text="ORANGE"></asp:Label> </h3>
             <p> Price :   <asp:Label ID="orangeLabel1" runat="server" Text="price"></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked " ></i></li> 
                </ul>
                 <asp:Label ID="orangeLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="orangeTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="orange" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="orangeTextBox1" ForeColor="Red" ValidationGroup="orange"></asp:RequiredFieldValidator>  </div>
                 <br />
                <asp:Button ID="orangeButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="orange" OnClick="orangeButton1_Click" />
            </div>

        


            

             
             <div class="content">
                <img src="grapes.jpg" alt="grapes" class="auto-style1" />
                <h3> <asp:Label ID="grapesname" runat="server" Text="GRAPES" ></asp:Label>  </h3>
               <p> Price : <asp:Label ID="grapesLabel1" runat="server" Text="price"></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star  checked" ></i></li> 
                </ul>
                 <asp:Label ID="grapesLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="grapesTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="grapes" ></asp:TextBox>  <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="grapesTextBox1" ForeColor="Red" ValidationGroup="grapes"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="grapesButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" ValidationGroup="grapes" OnClick="grapesButton1_Click" />
            </div>





             
             <div class="content">
                <img src="watermelon.jpg" alt="watermelon" />
                <h3>  <asp:Label ID="watermelon" runat="server" Text="WATERMELON"></asp:Label> </h3>
              <p>Price :  <asp:Label ID="watermelonLabel1" runat="server" Text="price"></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star " ></i></li> 
                </ul>
                 <asp:Label ID="watermelonLabel2" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="watermelonTextBox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="water" ></asp:TextBox>  <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="watermelonTextBox1" ForeColor="Red" ValidationGroup="water"></asp:RequiredFieldValidator> </div> 
                 <br />
                <asp:Button ID="watermelonButton1" ForeColor="White" BackColor="#000066" runat="server" Font-Bold="true" CssClass="buttoncntrl" Text="BUY" OnClick="watermelonButton1_Click" ValidationGroup="water" />
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
            <asp:Button ID="cooldrinkslink" width="500px" runat="server"  ForeColor="White" Font-Bold="true" BackColor="#000066" Text=" Click For Cooldrink Store" OnClick="cooldrinkslink_Click" />
            <br />
           <br />
           <asp:Button ID="btnprocess" Width="500px" ForeColor="White" Font-Bold="true" BackColor="#000066" runat="server" Text="Click for bill process" OnClick="btnprocess_Click" />
      
       </div>
         <div>
             <a class="talk" href="assistant1.html" > MEGAMART ASSISTANT </a>
        </div>
        



           <div id="vir">
           <a  href="assistant1.html" ><img src="voice.jpg" class="auto-style1" /> </a>
        </div>



 
    </form>
</body>
</html>
