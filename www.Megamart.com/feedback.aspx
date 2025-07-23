<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="www.Megamart.com.feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
    <style>
        *{
            margin:0px;
            padding:0px;
        }
        
        .logo{
            margin-left:350px;
            width:300px;
        }
        .nav{
            margin-top:150px;
        }
        .nav h1{
            
            padding-top:24px;
            height:70px;

        }
        .nav{
            margin-top:-200px;
            background-color:rgb(29, 22, 213);
            width:900px;
            text-align:center;
            margin-left:650px;
            border-radius:14px;
            color:white;
        }
        .image .img{
            width:700px;
            height:700px;
          
        }
        .image{
 
          margin-left:700px;
        }
        .feed{
            margin-top:90px;
            width:300px;
        }
        .feedback{
            display:inline-flex;
            margin-left:500px;
        }
        .dis{
            border-radius:13px;
            margin-top:80px;
            width:600px;
            padding:30px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            border:6px solid blue;
        }
        .b{
            height:40px;
            width:270px;
        }
        .all{
            margin-left:980px;
        }
        .feedbackus{
            background-color:blue;
             text-decoration:none;
            color:white;
            padding:15px;
        }
        .feedbackus a{
            text-decoration:none;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                 <img class="logo" src="1663343020745.png" />
            </div>
            <div class="nav">
               
                <h1> MEGAMART ONLINE SHOPPING </h1>

            </div>
          <div class="image">
              <img class="img" src="feedbackdemo.jpg" alt="Alternate Text" />
              
          </div>
            <div class="feedback">
                <div class="fd"> 
                    <img class="feed" src="feedback.jpg" alt="feedback" />
                    
                     
                </div>



                <div class="dis">
                    <h2>
                       Megamart is a online ordering and  shopping platform  which provides various types of products such as kitchen products cosmetics etc. 
                        Here the user enthusisum  and experience in shopping by feedback us.
                        User may provide feedback on product quality and short time delivery of product. <br />
                        <br />



            <!--  <asp:Button class="b" ID="feedbackus" runat="server" Font-Bold="true" BackColor="Blue"  ForeColor="White" Text=" FEEDBACK US" /> -->



                <a class="feedbackus" href="mailto:megamartshopping247@gmail.com" >FEEDBACK US </a>

                   </h2>
                </div>
            </div>
            <div class="all">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />

                <h4>All Rights Reserved</h4>
         <br />
                <br />
                <br />
                <br />

            </div>
        </div>
    </form>
</body>
</html>
