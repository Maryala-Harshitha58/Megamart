<%@ page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="www.Megamart.com.payment" %>
 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> payments</title>
    <style>
        img{
            
            width:800px;
            margin-left:500px;
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
            
             
    </style>
</head>
<body>
   
      <form action="paymentcheckout.aspx" method="post" name="razorpayForm" >

            <div class="logo">
            <img src="1663343020745.png" alt="logo" />



                
        </div>
       <div class="he">
         <p> MEGAMART ONLINE ORDERING AND SHOPPING</p>
       </div>

            


            <asp:Label ID="lblname" runat="server" ForeColor="#ffffff" Text=""></asp:Label>
            <asp:Label ID="amount" runat="server" ForeColor="#ffffff" Text=""></asp:Label>


           



          <img src="upipay1.png" alt="payment" />
    
         
               <%--<asp:Button ID="buttoncashon" runat="server" Text="Cash on delivery" OnClick="buttoncashon_Click" />--%>
         
            <input id="razorpay_payment_id" type="hidden" name="razorpay_payment_id" />
            <input id="razorpay_order_id" type="hidden" name="razorpay_order_id" />
            <input id="razorpay_signature" type="hidden" name="razorpay_signature" />



         
        </form>
          <button id="rzp-button1" > CLICK FOR  ONLINE PAYMENTS </button> 
    <br />
    <br />
    <br />
    <a href="cod.aspx" target="_blank" style="text-decoration:none; background-color:blue ; color:white; " > CLICK FOR CASH ON DELIVERY</a>
    <br />
    <br />
    <br />
     <a href="coc.aspx" target="_blank" style="text-decoration:none; background-color:blue ; color:white; " > CLICK FOR CASH ON COLLECT</a>
     <br />
    <br />
    <br />
     <br />
    <br />
    <br />



    <img src="upi-bg3.png" alt="upi" />
     
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        <script>
            var orderId = "<%=orderId%>"
            var options = {
                "name": lblname.Text ,
                "description": "MEGAMART",
                "order_id": orderId,
                "image": "https://s29.postimg.org/r6dj1g85z/daft_punk.jpg",
                "prefill": {
                    "name": "MEGAMART",
                    "email": "megamartshopping247@gmail.com",
                    "contact": "+918186054639",
                },
                "notes": {
                    "address": "Hello World",
                    "merchant_order_id": "12312321",
                },
                "theme": {
                    "color": "#F37254"
                }
            }
            // Boolean whether to show image inside a white frame. (default: true)
            options.theme.image_padding = false;
            options.handler = function (response) {
                document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
                document.getElementById('razorpay_order_id').value = orderId;
                document.getElementById('razorpay_signature').value = response.razorpay_signature;
                document.razorpayForm.submit();
            };
            options.modal = {
                ondismiss: function () {
                    console.log("This code runs when the popup is closed");
                },
                // Boolean indicating whether pressing escape key 
                // should close the checkout form. (default: true)
                escape: true,
                // Boolean indicating whether clicking translucent blank
                // space outside checkout form should close the form. (default: false)
                backdropclose: false
            };
            var rzp = new Razorpay(options);
            document.getElementById('rzp-button1').onclick = function (e) {
                rzp.open();
                e.preventDefault();
            }
        </script>
   
</body>
</html>
