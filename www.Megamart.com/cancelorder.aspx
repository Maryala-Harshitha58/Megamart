<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cancelorder.aspx.cs" Inherits="www.Megamart.com.cancelorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> cancel orders</title>
    <style>
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
        .imgcan{
            position:absolute;
            left:40%;
            height:500px;
        }
        .cancel{
            position:absolute;
            top:800px;
            left:44%;
        }
        .cancel .text{
            
      
            width:400px;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;

        }
        .cancel .btn{
             
            color:black;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            border-radius:11px;
        }
         .arrow img {
            position: relative;
            top: 100px;
            left: 80px;
            width:100px;
        }
         .re{
             position:absolute;
             left:65%;
             top:800px;

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
            if (document.getElementById("textcancel").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter your reason to cancel the order ");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="arrow">
              
                   <a href="Welcome.aspx"> <img src="blackarrow.png" alt="backward" /></a>
            </div>



              <div class="logo">
            <img src="1663343020745.png" alt="logo" />
                  </div>
             <div class="he">
         <p> MEGAMART ONLINE ORDERING AND SHOPPING</p>
       </div>
            <img  class="imgcan" src="cancelorder2.jpg" alt="cancel" />
        </div>
        <div class="cancel">
            <asp:TextBox CssClass="text" ID="textcancel" onfocus="email()" runat="server" placeholder="Enter reason for cancelletion" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button CssClass="btn" ID="buttoncancel" runat="server" Text="CANCEL THE ORDER" OnClick="buttoncancel_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
             <br />

            <asp:Label ID="Label3" runat="server" Text="" ForeColor="ForestGreen" ></asp:Label>
             </div>
                        <br />
            <br />
            <br />
            <br />
            <br />
            <br />

       
        <asp:Label ID="lblsp" runat="server" ForeColor="white" ></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="White" ></asp:Label>
        <asp:Label ID="dup" runat="server" ForeColor="White" ></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:RequiredFieldValidator CssClass="re" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required valid reason" ControlToValidate="textcancel" ForeColor="Red"></asp:RequiredFieldValidator>
    </form>
</body>
</html>
