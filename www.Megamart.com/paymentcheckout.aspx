<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paymentcheckout.aspx.cs" Inherits="www.Megamart.com.paymentcheckout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> payment success</title>
    <style>
         .logo img{
          width:200px;
          left:230px;
          position:relative;
      }
      .logo p{
          position:absolute;
          font-family :'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
         font-size:30px;
         left:22%;
         height:60px;
         padding-top:15px;
         text-align:center;
         border-radius:19px;
         width:1200px;
         background-color:blue;
         top:3%;
         color:white;

      }

      .pay{
          position:absolute;
          top:500px;
          left:600px;
      }
      .pay img{
          width:400px;
      }
      .pay .tra{
          padding-left:50px;
      }
      .pay .transa{
          position:absolute;
          left:290px;
      }
      .h2 h2{
          position:absolute;
          top:350px;
          left:600px;
      }
      .pay a{
          background-color:blue;
          width:200px;
          color:white;
          margin-left:250px;
          text-decoration:none;
          padding:3px;
      }
     
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       
           
        </div>
          <div class="logo">
             <img src="1663343020745.png" alt="logo" />
             <p>  MEGAMART PRODUCT ORDERING AND SHOPPING PLATFORM  </p>
         </div  >
        <div class="h2"><h2>TRANSACTION SUCCESS</h2></div>
        <div class="pay">
            
            <img src="success2.png" alt="payment" />
            <br />
          <h4 class="tra"> NAME : <asp:Label ID="usernm" runat="server" Text="srinivas" ></asp:Label></h4>  

            <br />
          
               <h4 class="tra">AMOUNT :<asp:Label ID="reamount" runat="server" Text="2000"  ></asp:Label></h4>
            <br />
            <h4 class="tra"> TRANSACTION ID :<asp:Label ID="transaction" runat="server" Text="w34dfjncbsbchdj6"></asp:Label>            </h4>
         <br />


            <%--<asp:Button class="transa" ID="btnok" runat="server"  Width="150px" ForeColor="White" BackColor="blue" Text="OK" OnClick="btnok_Click" />--%>

            <a href="mail.aspx"> click for Next</a>

        </div>

    </form>
</body>
</html>
