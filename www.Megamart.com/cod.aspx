<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cod.aspx.cs" Inherits="www.Megamart.com.cod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Cash On Delivery</title>
     <style>
        body{
          background-image:url("emailback.jpg");   
           background-repeat:no-repeat;
            background-origin:border-box;
            background-size:cover;
        }
        .details{
            position:absolute;
            top:50%;
            left:40%;
            height:500px;
            text-align:center;
            /*background-color:red;*/
            width:500px;
          
        }
        .details .table1{
            background-color:black;
            padding-top:100px;
            padding-top:40px;
        }
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
          .head{
              background-color:black;
              width:600px;
              padding:20px;
          }
    </style>

      <script>

    
            function del() {
                function speak(sentence) {
                    const text_speak = new SpeechSynthesisUtterance(sentence);
                    text_speak.rate = 0.75;
                    text_speak.pitch = 1;
                    window.speechSynthesis.speak(text_speak);
                }
                if (document.getElementById("address").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter your valid address ");
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


        <div>
            <div class="details">
                <p> </p>
                <asp:Label ID="submail" CssClass="head" runat="server" Text="ENTER YOUR DETAILS" ForeColor="White"></asp:Label>
                <table class="table1">
                    <tr>
                        <td>
                            <asp:Label ID="lablmail" ForeColor="White" runat="server" Text="YOUR EMAIL :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="ftxtbox" runat="server" Width="259px" ></asp:TextBox>
                        </td>
                        
                    </tr>

                    <tr>
                        <td>
                            <asp:Label runat="server" ForeColor="White" Text="PASSWORD :" ID="lblpass"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="passcode" placeholder="Password" Width="262px" TextMode="Password"></asp:TextBox>
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" password required" ControlToValidate="passcode" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                    </tr>


                    <tr>
                        <td>
                            <asp:Label runat="server" ForeColor="White" ID="mailto" Text="  SHOP MAIL :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" id="tomail"  Width="263px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                    <td>
                            <asp:Label runat="server" ForeColor="White" ID="caddress" Text="ENTER YOUR ADDRESS :"></asp:Label>
                       
                    </td>

                      <td>
                            <asp:TextBox runat="server" onfocus="del()" ID="address" placeholder="CUSTOMER ADDRESS" TextMode="MultiLine" Width="262px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" address required" ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>

                    </tr>

                    <tr>
                        <td> 
                            <asp:Label runat="server" ForeColor="White" ID="fupload" Text="ENTER YOUR DOWNLOADED INVOICE :"  ></asp:Label>
                        </td>

                        <td>
                            <asp:FileUpload ID="FileUpload1"  AllowMultiple="true" runat="server" />

                        </td>
                         
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Invoice required" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <asp:Button ID="buttonmail" runat="server" BackColor="#ff9900" ForeColor="Black" Width="150px" Text="NEXT" OnClick="buttonmail_Click" />
                        </td>
                    </tr>
                </table>

            </div>
        </div>
        


         </form>
</body>
</html>
