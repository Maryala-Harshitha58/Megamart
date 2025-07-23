<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cocsuccess.aspx.cs" Inherits="www.Megamart.com.cocsuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> coc success</title>
    <style>
           .logo img   {
            margin-left:300px;
            margin-top:-20px;
            width:200px;
        }
          .he p{
            padding-top:14px;
            height:70px;
            margin-top:-150px;
            margin-left:500px;
            text-align:center;
            width:1000px;
            font-size:40px;
            border-radius:14px;
            color:white;
            font:bold;
            background-color:blue;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;

        }
          img{
              margin-left:700px;
          }

          .sdetails{
              margin-left:800px;
          }
          .sdetails h5{
              color:forestgreen;
          }
    </style>
      <script>
       


         function welcome() {
            function speak(sentence) {
                const text_speak = new SpeechSynthesisUtterance(sentence);
                text_speak.rate = 1;
                text_speak.pitch = 1;
                window.speechSynthesis.speak(text_speak);
            }
             window.onload(speak("your order placed successfully"))
        }


        welcome();
      </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="logo">
            
             <img src="1663343020745.png" alt="logo" />

        </div>
       <div class="he">
         <p> MEGAMART ONLINE ORDERING AND SHOPPING</p>
       </div>
        <img src="oplaced.gif" alt="gif" />

        <div class="sdetails">
            <h3>Your Order placed successfully</h3>
          <h4>Super Market Name :  <asp:Label ID="lblsname" runat="server" Text="sname"></asp:Label> </h4>
 
            <h4> Super Market Email : <asp:Label ID="semail" runat="server" Text="email"></asp:Label></h4>

            <br />
            <br />
            <h5>Your order placed successfully! plz collect the order at selected supermarket</h5>

        <br />
            <br />
            <asp:Button ID="cocdetails" runat="server" Text="More Details" OnClick="cocdetails_Click"  />
        </div>

        </div>
    </form>
</body>
</html>
