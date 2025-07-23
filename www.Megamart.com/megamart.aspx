
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="megamart.aspx.cs" Inherits="www.Megamart.com.megamart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> MEGAMART</title>

    <style>
       body{
            background-image:url("grocry1.jpg");   
            background-repeat:no-repeat;
            background-origin:border-box;
            background-size:cover;
  
           
       }

       .logo img   {
            margin-left:200px;
            margin-top:-20px;
            width:200px;
        }
          .he p{
            padding-top:14px;
            height:70px;
            margin-top:-150px;
            margin-left:440px;
            text-align:center;
            width:1200px;
            font-size:40px;
            border-radius:14px;
            color:white;
            font:bold;
            background-color:blue;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;

        }
          .img{
              position:absolute;
              left:77%;
              top:40%;
              width:150px;
              border-radius:13px;


          }

          .login{
              position:absolute;
              top:20%;
              left:70%;
              width:150px;
              background-color:blue;
              color:white;
              text-align:center;
              text-decoration:none;
              font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
              font-size:30px;
         
          }

           .sign{
              position:absolute;
              top:20%;
              left:80%;
              width:150px;
               background-color:blue;
              color:white;
               text-decoration:none;
               text-align:center;
              font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
               font-size:30px;
          }
           .dis{

               background-color:blue;
               width:700px;
               color:white;
               padding:30px;
               position:absolute;
                 font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
               top:400px;
               left:15%;
               border-top-right-radius:20px;
                border-bottom-left-radius:20px;

           }
           .online{
               position:absolute;
               top:32%;
               left:4%;
           }

           .online img{
               width:200px;
               border-radius:200px;
           }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="logo">
            <img src="1663343020745.png" alt="logo" />

        </div>
       <div class="he">
         <p> MEGAMART ONLINE ORDERING AND SHOPPING PLATFORM</p>
       </div>

            <div class="img">
                <img src="h1.jpg" alt="h1" />
            </div>


            <div>
                <a class="login" href="userLogin.aspx" >LOGIN</a>
            </div>

            <div>
                <a class="sign" href="signup.aspx" >SIGNUP</a>
            </div>

            <div class="dis">
                <h1>
                   <u>Megamart</u> 
                </h1>
                <h2>
                    Megamart online ordering and shopping website provides wide and varities of products with offers and discounts
                     The megamart shopping website to submit selected products and facilities from a superstore or supermarket that distributes both walk-in-clients and also 
                cash on deliveries are avaliable
                </h2>
            </div>

            <div class="online">
                <img src="onlineshop.jpg" alt="shop" />
            </div>



        </div>
    </form>
</body>
</html>
