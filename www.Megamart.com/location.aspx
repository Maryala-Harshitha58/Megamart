<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="location.aspx.cs" Inherits="www.Megamart.com.location" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User location</title>
   <style>
       *{
           margin:0px;
           padding:0px;
       }
       #imagelog{
           margin-top:-150px;
           margin-left:320px;
           width:130px;
          
       }
       #markerlog{
           float:right;
           width:60px;
           padding-top:14px;
       }

       #textbox1,h3{
           text-align:center;
       }
 #textbox1{
  
     border-radius:13px;
     text-align:left;
     margin-top:240px;
     margin-left:1600px;
     padding:8px;
     background-color:rgba(16, 10, 10,0.5);
     width:240px;
     height:200px;
    
 }
 .imageloc,iframe{
     width:1300px;
     margin-left:150px;
     margin-top:-370px;
     height:700px;
    
 }
 .imageloc{
     font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
     margin-top:200px;
     margin-left:400px;
     
 }
 p{
     font-size:50px;
   width:1100px;
   text-align:center;
     margin-left:530px;
     margin-top:70px;
     border-radius:12px;
     padding:8px;
     color:aliceblue;
    
     background-color:rgb(13, 14, 81);
     
 }
 .locbtn{
     border-radius:12px;
 }
.btnnext:hover{
    background-color:rgb(22, 133, 150);
}
.btnnext{
    border-radius:8px;
}

 
       .auto-style1 {
           height: 416px;
         
       }

 
   </style>
     <script>
        function marketid() {
            function speak(sentence) {
                const text_speak = new SpeechSynthesisUtterance(sentence);
                text_speak.rate = 0.7;
                text_speak.pitch = 1;
                window.speechSynthesis.speak(text_speak);
            }
            if (document.getElementById("locatxtbox").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter Nearby supermarket email ID to place order  ");
            }
        }
     </script>
  </head>
<body>
    <form id="form1" runat="server">
        <p><u>Search for SuperMarkets or Select</u></p>
        <div>
            <img id="imagelog" src="1663343020745.png"  alt="megamartLogo" />
        </div>
        <div id="textbox1" class="auto-style1">
            <h3><u> SuperMarket Entry </u></h3>
            <div>
                <img id="markerlog" src="markerLOGO.jpg" alt="maplogo" />
            </div>
            <br />
            <br />
            <asp:Label ID="labelloc1" runat="server" ForeColor="White" Text="Enter Market Email ID"></asp:Label>
            <br />
            <br />
   
        <td>  <asp:TextBox ID="locatxtbox" runat="server" onfocus="marketid()" CssClass="locbtn" placeholder="Enter Email"></asp:TextBox> </td> <br />         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage=" invalid email" ControlToValidate="locatxtbox" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="locbutton" BorderColor="WhiteSmoke" runat="server" Width="80px" Text="Next" Font-Bold="true" cssclass="btnnext" OnClientClick="target='_blank'"  ForeColor="Black" OnClick="locbutton_Click" />
            <br />

              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="locatxtbox" ErrorMessage="Supermarket ID is mandatory" ForeColor="#CC0000"></asp:RequiredFieldValidator>

        </div>

        
        <div cssclass="imageloc">
           
             <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d30453.72478231487!2d78.39697301387783!3d17.425431034694316!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1ssupermarkets%20near%20Hyderabad%2C%20Telangana!5e0!3m2!1sen!2sin!4v1663480680343!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

           

        </div>
        
        

            </form>
</body>
</html>
