<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vegetables.aspx.cs" Inherits="www.Megamart.com.vegetables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VEGATABLES</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet" />
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
    margin-left:1050px;
    margin-top:-250px;
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
        <h1><u> MEGAMART  VEGETABLES STORE </u></h1>
         </div>

        <div class="gallery">
            <div class="content">
                <img src="Cherry Tomato _ 1 pint box - Cherry Tomato _ 1 Pint Box.png" alt="tomoto" />
               <h3> <asp:Label ID="tamatoname" runat="server" Text="TOMATO"></asp:Label></h3> 
               <!-- <p>M.R.P:<s>ammount</s></p> -->
              <p> Price : <asp:Label ID="labelone" runat="server"  Text=""></asp:Label>/kg </p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                </ul>
                <div class="maincntrl">
                <asp:Label ID="labeltomato" CssClass="" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="textboxtomqun" runat="server" placeholder="Kgs" TextMode="Number" OnTextChanged="textboxtomqun_TextChanged" ValidationGroup="tomato" ></asp:TextBox>  <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter Quantity" ControlToValidate="textboxtomqun" ForeColor="Red" ValidationGroup="tomato"></asp:RequiredFieldValidator></div>
                    <br />
                <asp:Button ID="buttontomato" CssClass="buttoncntrl" ForeColor="White" BackColor="#000066" runat="server" Text="BUY" OnClick="buttontomato_Click" ValidationGroup="tomato" />
                    </div>
            </div>

            


             <div class="content">
                <img src="brinjal.jpg" alt="tomoto" />
                <h3>  <asp:Label ID="BRINJALNAME" runat="server"  Text="BRINJAL"></asp:Label> </h3>
                <p>price:    <asp:Label ID="label1" runat="server" Text="" ></asp:Label>/Kg </p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star " ></i></li> 
                </ul>
                 <asp:Label ID="label10" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="textbox1" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="brinjal" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="textbox1" ForeColor="Red" ValidationGroup="brinjal"></asp:RequiredFieldValidator> </div> <br />
                <asp:Button ID="button1" ForeColor="White" BackColor="#000066" runat="server" CssClass="buttoncntrl" Text="BUY" OnClick="button1_Click" ValidationGroup="brinjal" />
            </div>




             <div class="content">
                <img src="spinach.jpg" />
                <h3>  <asp:Label ID="spinachname" runat="server"  Text="SPINACH"></asp:Label></h3>
               <p>Price : <asp:Label ID="label2" runat="server" Text=""> </asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star " ></i></li>
                </ul>
                 <asp:Label ID="label11" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="textbox2" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="spinach" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" *Enter Qunatity" ControlToValidate="textbox2" ForeColor="Red" ValidationGroup="spinach"></asp:RequiredFieldValidator> </div> <br />
                <asp:Button ID="button2" runat="server" Text="BUY" ForeColor="White" BackColor="#000066" CssClass="buttoncntrl" OnClick="button2_Click" ValidationGroup="spinach" />
            </div>







             <div class="content">
                <img src="bottleguard.jpg" alt="tomoto" />
                <h3>   <asp:Label ID="bottelguardname" runat="server" Text="BOTTLEGOURD"></asp:Label>   </h3>
               <p> Price :<asp:Label ID="label3" runat="server" Text=""></asp:Label>/Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                </ul>
                 <asp:Label ID="label12" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="textbox3" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="bottlegourd" ></asp:TextBox> <div>  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" *Enter Quanatity" ControlToValidate="textbox3" ForeColor="Red" ValidationGroup="bottlegourd"></asp:RequiredFieldValidator> </div><br />
                <asp:Button ID="button3" runat="server" ForeColor="White" BackColor="#000066" CssClass="buttoncntrl" Text="BUY" ValidationGroup="bottlegourd" OnClick="button3_Click" />
            </div>







             <div class="content">
                <img src="cabbage.jpg" alt="tomoto" />
                <h3> <asp:Label ID="cabbagename" runat="server" Text="CABBAGE"></asp:Label> </h3>
              <p> Price :<asp:Label ID="label4" runat="server" Text=""></asp:Label>/Kg </p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star " ></i></li> 
                </ul>
                 <asp:Label ID="label13" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="textbox4" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="cabbage" ></asp:TextBox> <div>  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="textbox4" ForeColor="Red" ValidationGroup="cabbage"></asp:RequiredFieldValidator></div>  <br />
                <asp:Button ID="button4" ForeColor="White" BackColor="#000066" CssClass="buttoncntrl" runat="server" Text="BUY" ValidationGroup="cabbage" OnClick="button4_Click" />
            </div>



            
             <div class="content">
                <img src="ladiesfinger3.jpg" alt="tomoto" />
                <h3>  <asp:Label ID="ladiesfingername" runat="server" Text="LADIESFINGER"></asp:Label> </h3>
              <p>Price :<asp:Label ID="label5" runat="server" Text=""></asp:Label> /Kg </p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                </ul>
                 <asp:Label ID="label14" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="textbox5" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="ladiesfinger" ></asp:TextBox>  <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="textbox5" ForeColor="Red" ValidationGroup="ladiesfinger"></asp:RequiredFieldValidator> </div>
                 <br />
                <asp:Button ID="button5" runat="server" ForeColor="White" BackColor="#000066" CssClass="buttoncntrl" Text="BUY" ValidationGroup="ladiesfinger" OnClick="button5_Click" />
            </div>



            
             <div class="content">
                <img src="greenchilli.jpg" alt="tomoto" />
                <h3> <asp:Label ID="greenchilliname" runat="server" Text="GREENCHILLI"></asp:Label> </h3>
                <p> Price :<asp:Label ID="label6" runat="server" Text=""></asp:Label> /Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                </ul>
                 <asp:Label ID="label15" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="textbox6" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="greenchilli" ></asp:TextBox> <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="textbox6" ForeColor="Red" ValidationGroup="greenchilli"></asp:RequiredFieldValidator>  </div>
                 <br />
                <asp:Button ID="button6" CssClass="buttoncntrl" ForeColor="White" BackColor="#000066" runat="server" Text="BUY" ValidationGroup="greenchilli" OnClick="button6_Click" />
            </div>



               <div class="content">
                <img src="drumstick.jpg" alt="tomoto" />
                <h3> <asp:Label ID="drumstickname" runat="server" Text="DRUMSTICKS"></asp:Label> </h3>
               <p> Price : <asp:Label ID="label7" runat="server" Text=""></asp:Label> /Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star " ></i></li>
                </ul>
                   <asp:Label ID="label16" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="textbox7" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="drumsticks" ></asp:TextBox>  <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="textbox7" ForeColor="Red" ValidationGroup="drumsticks"></asp:RequiredFieldValidator>   </div>
                   <br />
                <asp:Button ID="button7" CssClass="buttoncntrl" ForeColor="White" BackColor="#000066" runat="server" Text="BUY" ValidationGroup="drumsticks" OnClick="button7_Click" />
            </div>


               <div class="content">
                <img src="onion.jpg" alt="tomoto" />
                <h3> <asp:Label ID="onionname" runat="server" Text="ONION"></asp:Label>  </h3>
                <p> Price :<asp:Label ID="label8" runat="server" Text=""></asp:Label> /Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                </ul>
                   <asp:Label ID="label17" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="textbox8" runat="server" placeholder="Kgs" TextMode="Number" ValidationGroup="onion" ></asp:TextBox> <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="textbox8" ForeColor="Red" ValidationGroup="onion"></asp:RequiredFieldValidator> </div>                   <br />
                <asp:Button ID="button8" runat="server" ForeColor="White" BackColor="#000066" CssClass="buttoncntrl" Text="BUY" OnClick="button8_Click" ValidationGroup="onion" />
            </div>

           


              <div class="content">
                <img src="potato.jpg" alt="tomoto" />
                <h3>  <asp:Label ID="potatoname" runat="server" Text="POTATO" ></asp:Label>      </h3>
             <p> Price :   <asp:Label ID="label9" runat="server" Text=""></asp:Label> /Kg</p>
                <ul>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                    <li> <i class="fa fa-star checked" ></i></li>
                   <li> <i class="fa fa-star " ></i></li>
                </ul>
                  <asp:Label ID="label18" runat="server" Text="Quantity :"></asp:Label>
                <asp:TextBox ID="textbox9" runat="server" placeholder="Kgs" TextMode="number" ValidationGroup="potato"  ></asp:TextBox> <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage=" *Enter Quantity" ControlToValidate="textbox9" ForeColor="Red" ValidationGroup="potato"></asp:RequiredFieldValidator> </div>
                  <br />
                <asp:Button ID="btnbutton9" runat="server" CssClass="buttoncntrl" ForeColor="White" BackColor="#000066" Text="BUY" ValidationGroup="potato" OnClick="btnbutton9_Click" />
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
             <a class="talk" href="assistant1.html" >MEGAMART ASSISTANT  </a>
        </div>
        
        <div id="vir">
           <a  href="assistant1.html" ><img src="voice.jpg" class="auto-style1" /> </a>
        </div>

    </form>
</body>
</html>
