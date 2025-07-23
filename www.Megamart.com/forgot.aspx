<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="www.Megamart.com.forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>forgot password</title>
    <style>
        .arrow img {
            position: relative;
            top: 100px;
            left: 80px;
            width: 100px;
        }
          .logo img {
            margin-left: 300px;
            margin-top: -20px;
            width: 200px;
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
        .FORGOT{
            background-color:rgb(21, 18, 193);
            color:white;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            text-align:center;
           position:absolute;
           top:240px;
           left:40%;
           width:500px;
        
        }
        .box{
            position:absolute;
            top:400px;
            left:40%;
        }
        .box .txt{
            color:blue;
            font-family:'Times New Roman', Times, serif;
            border-left-style:none;
            border-right-style:none;
            border-top-style:none;
            border-bottom-style:groove;

        }
        .box .btn{
            background-color:blue;
            color:white;
            font-family:'Times New Roman', Times, serif;
        }

        
    </style>
    <script>
        function reemail() {
            function speak(sentence) {
                const text_speak = new SpeechSynthesisUtterance(sentence);
                text_speak.rate = 1;
                text_speak.pitch = 1;
                window.speechSynthesis.speak(text_speak);
            }
            if (document.getElementById("txtmail").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter your Registered email id");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
          <div class="logo">
            <img src="1663343020745.png" alt="logo" />

        </div>
       <div class="he">
         <p> MEGAMART ONLINE ORDERING AND SHOPPING</p>
       </div>

        <div class="arrow">
              
                   <a href="userLogin.aspx"> <img src="blackarrow.png" alt="backward" /></a>
            </div>

        <div>
            <h1 class="FORGOT">
                FORGOT PASSWORD
            </h1>

            <div class="box">
              <asp:Label ID="lblname" runat="server" Text="Enter your Registered Email :"></asp:Label><br />
               
                <br />
                <br />

                
                <asp:TextBox  onfocus="reemail()" CssClass="txt" Width="400px"  ID="txtmail" runat="server" placeholder="Enter Email"></asp:TextBox>     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage=" *Invalid Email" ControlToValidate="txtmail" ForeColor="Red"></asp:RegularExpressionValidator> 
                <br />
                <br />
                <br />

                <asp:Button CssClass="btn" ID="btnsend"  runat="server" Text="Send password" OnClick="btnsend_Click" />
                <br />
                <br />
                <br />
              
                <asp:Label ID="msg" runat="server" Font-Bold="true" Font-Size="16" ForeColor="Green"></asp:Label>
               

            </div>

        </div>
    </form>
</body>
</html>
