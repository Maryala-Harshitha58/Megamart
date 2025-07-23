<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="www.Megamart.com.Welcome" EnableViewState="false" EnableViewStateMac="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WELCOME</title>
    <style>
        body{
            width:100%;
        }
         .imagetag{
            width: 300px;
            margin-top:-210px;
            margin-left:250px;
        }
        h1{
            text-align:center;
            width:1050px;
            font-family:Algerian;
            font-size:50px;
            margin-left:26%;
            margin-top:70px;
            background-color:rgb(5, 23, 57);
            color:aliceblue;
            border-radius:14px;
        }
        h3{
            margin-top:70px;
            margin-left:10%;

        }
        .welco{
            margin-top:18px;
            margin-left:378px;

        }
        h5{
      margin-left:300px;

        }
        h2{
            word-spacing:3px;
           
            margin-left:10%;
        }
        .imger{
            width:700px;
            height:550px;
            margin-left:62%;
            margin-top:-280px;
        }
        .tabwelc , table{
            width:300px;
            height:500px;
            padding:30px;
            margin-top:-150px;
            margin-left:30%;
            background-color:rgba(23, 19, 19,0.5);
            border-radius:8px;
            height:70px;
            
        }
        .welcomtext{
            border-radius:10px;
            background-color:rgb(7, 14, 63);
            color:aliceblue;
        }  
        q{
            margin-left:100px;
        }
        strong{
            margin-left:370px;
        }

        .aorders{
            position:absolute;
            left:80%;
            top:100px;
            width:250px;
            background-color:blue;
            text-decoration:none;
            border-radius:15px;
       text-align:center;
       font-size:30px;
            color:white;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

        }
       
         

    </style>
    <script>
        function phone() {
            function speak(sentence) {
                const text_speak = new SpeechSynthesisUtterance(sentence);
                text_speak.rate = 1;
                text_speak.pitch = 1;
                window.speechSynthesis.speak(text_speak);
            }
            if (document.getElementById("textwelcome").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter your valid phone number ");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server"   >
        <div>
            <h1>MEGAMART ONLINE SHOPPING PLATFORM</h1>
          
        <div> 
            <asp:Image ID="image1" runat="server" ImageUrl="~/1663343020745.png" CssClass="imagetag" />
        </div>
        </div>
        <div class="deta">
             <a class="aorders" href="orders.aspx" > Your orders</a>

        </div>

        <h2><u>Welcome  </u><q> <asp:Label ID="welname" runat="server" Text=""></asp:Label> </q></h2>
        <h3> Hello! welcome to MEGAMART Online  Shopping Platform 
            <br />
            <br />
            <q>Happiness is not in money,but in shopping</q>
            <br />
            <br />
            <strong>-MEGAMART</strong>
        </h3> 
         <asp:Image ID="image23" runat="server" ImageUrl="~/1663342290853.jpeg" CssClass="imger" />
        <div cssclass="tabwelc">
            <table  >
                <tr>
                   <td>
                       <asp:Label ID="labelent1" runat="server" ForeColor="White"  Text ="       PHONE NUMBER"></asp:Label>
                   </td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="textwelcome" onfocus="phone()" CssClass="welcomtext" runat="server" placeholder=" Enter Phone number" MaxLength="10"  TextMode="Phone"></asp:TextBox></td>
                    <td>  
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textwelcome" ErrorMessage="phone number is mandatory" CssClass="validname" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr> <td>
                    <asp:Button ID="buttonwel" Font-Bold="true" runat="server" Text="Let's Buy" CssClass="welcomtext" OnClick="buttonwel_Click" />
                     </td>

                </tr>
                <tr> <td colspan="2"> <asp:Label ID="errorlabel" runat="server" ForeColor="#CC0000"></asp:Label> </td></tr>
            </table>
        </div>
       

    </form>
</body>
</html>
