9<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="www.Megamart.com.userLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="1663343020745.png" type="image/x-icon" width="190px" rel="icon" />
    <title >www.Megamart.com</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    <style type="text/css">
         
        .auto-style1 {
            height: 0px;
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
        .logo img   {
            margin-left:300px;
            margin-top:-20px;
            width:200px;
        }
   .logincontain{
       position:absolute;
       left:-300px;
      height:450px;
       top:-70px;
   }        
   .logincontain table{
       padding:50px;
   }
   .logincontain .for{
       text-decoration:none;
       font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
       color:white;
       border:4px solid blue;
       padding:8px;
       
   }
    </style>
    <script>



        function email() {
            function speak(sentence) {
                const text_speak = new SpeechSynthesisUtterance(sentence);
                text_speak.rate = 1;
                text_speak.pitch = 1;
                window.speechSynthesis.speak(text_speak);
            }
            if (document.getElementById("usertext").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter your Email");
            }
        }
        function pass() {
            function speak(sentence) {
                const text_speak = new SpeechSynthesisUtterance(sentence);
                text_speak.rate = 0.75;
                text_speak.pitch = 1;
                window.speechSynthesis.speak(text_speak);
            }
            if (document.getElementById("textpass").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter your password ");
            }
        }



   
        function welcome() {
            function speak(sentence) {
                const text_speak = new SpeechSynthesisUtterance(sentence);
                text_speak.rate = 1;
                text_speak.pitch = 1;
                window.speechSynthesis.speak(text_speak);
            }
            window.onload(speak("Welcome to mega mart shopping"))
        }


        welcome();
    </script>
</head>
    
<body style="width: 546px">
    <form id="form1" runat="server" >
       
        <div class="logo">
            <img src="1663343020745.png" alt="logo" />

        </div>
       <div class="he">
         <p> MEGAMART ONLINE ORDERING AND SHOPPING</p>
       </div>
            <div class="logincontain"> 
 LOGIN</u></h3>
        <table>      
            <tr> <td class="auto-style1"><asp:Label  ID="lbuserid" runat="server" ForeColor="White"  Text="Email"> </asp:Label> </td></tr>
           <tr><td> <asp:TextBox ID="usertext" runat="server" CssClass="userboxtext" placeholder="Enter email"  OnTextChanged="usertext_TextChanged" onfocus="email()" ></asp:TextBox> </td>   <td>   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage=" *Invalid Email" ControlToValidate="usertext" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>      </td>       </tr>
          <tr><td> <asp:Label ID="labelpass" runat="server" ForeColor="White" >Password</asp:Label> </td></tr> 
           <tr> <td><asp:TextBox ID="textpass" TextMode="Password" CssClass="txtpass" placeholder="Password" runat="server" onfocus="pass() "> </asp:TextBox> </td> </tr>
            <tr><td> <asp:Button  ID="butlogin" runat="server" ForeColor="White" cssclass="btnlog" text="LOGIN" BackColor="#000066" OnClick="butlogin_Click"  /> </td></tr>
            </table>
                <asp:Label ID="labelerr" runat="server" Font-Size="25px" ForeColor="#CC0000" Text=""></asp:Label>
                <h5>CREATE NEW ACCOUNTCREATE NEW ACCOUNT</h5> <asp:Button cssclass="btn" ID="btnsign" BorderStyle="Ridge"  BorderColor="White" runat="server" Text="SIGNUP" ForeColor="White" BackColor="#000099" OnClick="btnsign_Click" />
                <br />
                <br />
                <br />
                <a class="for" href="forgot.aspx">Forgot password?</a>
                <br />

                    </div>
    </form>
</body>
</html>
