<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="www.Megamart.com.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
     <title>Signup</title>
    <style>
        body{
            background-image:url("son.jpg");
            background-origin:border-box;
            background-size:cover;
            background-repeat:no-repeat;

        }
        
     
        .sign ,table{
            padding:0px;
           
            height:450px;
            width:800px;
            margin-left:350px;
            margin-top:50px;
         
          
        }
        .txtbox{
            border-radius:10px ;
            border-color:azure;
            background-color:rgb(6, 21, 61);
            
        } 
        .labelcntr{
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
      h1{
          width:1500px;
          height:80px;
          margin-left:300px;
          padding-top:20px;
          margin-top:-150px;
          color:white;
          border-radius:15px;
          text-decoration:none;
          background-color:blue;
          font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

      }
      .valid{
          color:red;
      }
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            margin-left: 11px;
            margin-top: -10px;
        }
       
.br{
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin-top:100px;
    margin-left:490px;
}      



.logo img{
    width:200px;
    margin-top:-30px;
    margin-left:100px;
    
}
        
    </style>

     <script>
        function firstname() {
            function speak(sentence) {
                const text_speak = new SpeechSynthesisUtterance(sentence);
                text_speak.rate = 1;
                text_speak.pitch = 1;
                window.speechSynthesis.speak(text_speak);
            }
            if (document.getElementById("firstnamebox").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter your FIrst name");
            }
        }
        function lastname() {
            function speak(sentence) {
                const text_speak = new SpeechSynthesisUtterance(sentence);
                text_speak.rate = 1;
                text_speak.pitch = 1;
                window.speechSynthesis.speak(text_speak);
            }
            if (document.getElementById("lastnamebox").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter your Last Name ");
            }
         }
         function email() {
             function speak(sentence) {
                 const text_speak = new SpeechSynthesisUtterance(sentence);
                 text_speak.rate = 1;
                 text_speak.pitch = 1;
                 window.speechSynthesis.speak(text_speak);
             }
             if (document.getElementById("emailbox").value == '') {
                 document.getElementById("id1").innerHTML = speak("Enter your valid  email ");
             }
         }

         function pass() {
             function speak(sentence) {
                 const text_speak = new SpeechSynthesisUtterance(sentence);
                 text_speak.rate = 1;
                 text_speak.pitch = 1;
                 window.speechSynthesis.speak(text_speak);
             }
             if (document.getElementById("passwordbox").value == '') {
                 document.getElementById("id1").innerHTML = speak("Enter your password ");
             }
         }

         function conpass() {
             function speak(sentence) {
                 const text_speak = new SpeechSynthesisUtterance(sentence);
                 text_speak.rate = 1;
                 text_speak.pitch = 1;
                 window.speechSynthesis.speak(text_speak);
             }
             if (document.getElementById("conformpTextBox6").value == '') {
                 document.getElementById("id1").innerHTML = speak("Enter your conform password ");
             }
         }

         function phone() {
             function speak(sentence) {
                 const text_speak = new SpeechSynthesisUtterance(sentence);
                 text_speak.rate = 1;
                 text_speak.pitch = 1;
                 window.speechSynthesis.speak(text_speak);
             }
             if (document.getElementById("phonebox").value == '') {
                 document.getElementById("id1").innerHTML = speak("Enter your phone number ");
             }
         }

         function welcome() {
             function speak(sentence) {
                 const text_speak = new SpeechSynthesisUtterance(sentence);
                 text_speak.rate = 1;
                 text_speak.pitch = 1;
                 window.speechSynthesis.speak(text_speak);
             }
             window.onload(speak("Welcome to mega mart  shopping please sign up Here"))
         }


         welcome();


     </script>
</head>
<body>
    <form id="form1" runat="server" >
        <div class="logo">
            <img src="1663343020745.png" alt="logo" />
        </div>


        <h1 cssclass="head" align="center"> <u>MEGAMART ONLINE ORDERING AND  SHOPPING PLATFORM </u></h1>
        <div class="br"><h2>SIGN UP</h2></div>
        <div cssclass="sign">
            <table> <tr>
               <td> <asp:Label ID="Label1" runat="server" CssClass="labelcntr" Text="FirstName"></asp:Label>  

               </td>
                <td>
                    <asp:TextBox ID="firstnamebox" CssClass="txtbox" ForeColor="White" onfocus="firstname()" runat="server"></asp:TextBox>

                </td>
              <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="valid" runat="server" ErrorMessage=" *FirstName Requied" ControlToValidate="firstnamebox"></asp:RequiredFieldValidator>
                 </td>
                 
                    </tr>
                <tr> <td>
                    <asp:Label ID="Label2" runat="server" CssClass="labelcntr" Text="LastName"></asp:Label> </td>
                    <td>
                        <asp:TextBox ID="lastnamebox"  CssClass="txtbox" onfocus="lastname()" ForeColor="White" runat="server"></asp:TextBox> </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="valid" runat="server" ErrorMessage="*LastName Required" ControlToValidate="lastnamebox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr> <td> <asp:Label ID="Label3" runat="server" CssClass="labelcntr"  Text="Email"></asp:Label></td>
                    <td> <asp:TextBox ID="emailbox" CssClass="txtbox" onfocus=" email()"  ForeColor="White" runat="server"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="valid" runat="server" ErrorMessage="* Email Required" ControlToValidate="emailbox"></asp:RequiredFieldValidator>
                        <br />
                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="emailbox" ErrorMessage=" *Valid Email Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage=" *Invalid Email" ControlToValidate="emailbox" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


                    </td>
                </tr>
                <tr> 
                    <td> <asp:Label ID="Label4" runat="server" CssClass="labelcntr" Text="Password"></asp:Label></td>
                    <td> <asp:TextBox ID="passwordbox" CssClass="txtbox" onfocus=" pass()"  MaxLength="16" ForeColor="White" runat="server" TextMode="Password" ></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="valid" runat="server" ErrorMessage="* Password Required" ControlToValidate="passwordbox"></asp:RequiredFieldValidator>  </td>
                </tr>
                <tr> <td>
                    <asp:Label ID="Label5" runat="server" CssClass="labelcntr"  Text="Conform password"></asp:Label> </td>
                    <td>
                        <asp:TextBox ID="conformpTextBox6" CssClass="txtbox" MaxLength="16" onfocus="conpass()"  ForeColor="White"  runat ="server"  CausesValidation="True" TextMode="Password"></asp:TextBox>

                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="valid" runat="server" ErrorMessage=" *Conform password Required" ControlToValidate="conformpTextBox6"></asp:RequiredFieldValidator> 
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordbox" ControlToValidate="conformpTextBox6" ErrorMessage=" *Both passwords must be same" ForeColor="#FF3300"></asp:CompareValidator>
                    </td>
                </tr>


                <tr> 
                    <td>
                        <asp:Label ID="labelgender" runat="server" Font-Bold="true" Text="Gender"></asp:Label>  </td> 
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style2" Height="0px" RepeatDirection="Horizontal" Width="223px">
                                <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Other" Value="3"></asp:ListItem>

                            </asp:RadioButtonList>
                           
                        </td>
                    <td>                
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*Gender requried" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr> <td>
                    <asp:Label  ID="Label6" runat="server" CssClass="labelcntr" Text="Phone"></asp:Label> </td>
                    <td> <asp:TextBox ID="phonebox" CssClass="txtbox" onfocus="phone()" MaxLength="10"  ForeColor="White"  runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="valid" runat="server" ErrorMessage=" *phone number Required" ControlToValidate="phonebox"></asp:RequiredFieldValidator> </td>
                </tr>
                <tr> <td> <asp:Button ID="Button1" Font-Bold="true" align="right" runat="server" ForeColor="white" BackColor="#000066" Text="Reset" CssClass="auto-style1" /></td>
                    <td> <asp:Button ID="Button2" runat="server" Font-Bold="true" ForeColor="white" BackColor="#000066" Text="SIGNIN" OnClick="Button2_Click" /></td>
                </tr>
            </table>
        </div>
        
    </form>
    </body>
</html>
