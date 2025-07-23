<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About Us.aspx.cs" Inherits="www.Megamart.com.About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>ABOUT US</title>
     <link  rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css" />
    <script src="https://kit.fontawesome.com/824932256a.js" crossorigin="anonymous"></script>
    <style>
        body{
            background-color:rgba(67, 234, 89,0.4);
        }
        .imageslides {
            height: 500px;
        }

        .head h2 {
            border-radius: 40px;
            padding-top: 30px;
            height: 70px;
            margin-left: 320px;
            width: 70%;
            text-align: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: rgb(15, 22, 232);
            color: aliceblue;
        }

         .head img {
            margin-left: 100px;
            width: 200px;
            margin-bottom: -180px;
        }

        .imageslides {
            padding-top: 80px;
            margin-left: 1220px;
        }
        .con{
            
            padding:50px;
            border:4px solid red;
            height:350px;
            margin-top:-420px;
              width:700px;
              margin-left:360px;
            text-align:left;
            background-color:rgba(13, 85, 164,0.3);
            border-radius:13px;
        }
        .contact{
           font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
           margin-top:250px;
           width:450px;
           height:150px;
           border:5px solid black;
           border-top-right-radius:19px;
           border-bottom-left-radius:19px;
           border-bottom-right-radius:19px;
            padding:20px;
            margin-left:400px;

        }
        .contact a {
            padding-left:40px;
            display:inline-flex;
            
        }
        .facebook{
            width:70px;
            height:60px;
        }
        .backarrow .button1{
            position:absolute;
            top:240px;
            width:90px;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            border-radius:13px;
            height:50px;
            left:40px;
            color:black;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="backarrow"> <asp:Button CssClass="button1" ID="back" runat="server" Text="BACK" OnClick="back_Click" /> </div>




        <div class="head">
            <img src="1663343020745.png" />
            <h2><u>MEGAMART ONLINE SHOPPING AND ORDERING PLATFORM</u></h2>
        </div>



        <div class="imageslides">

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
                    <asp:Image ID="Image1" Width="600px" Height="550px" runat="server" />
                   
                </ContentTemplate>
                
            </asp:UpdatePanel>
             
        </div>


      




        <div class="con">
               <h1 id="he1"><u> About us </u>:</h1>
            <h2>
               
            <q>  Megamart is a online product ordering and delivery platform </q>where you can buy household kitchen products ,pharmaceutical products and cosmetics etc from user specified Geo-location
                Supermarket. <br />
              The megamart shopping website to submit selected products and facilities from a superstore or supermarket that distributes both walk-in-clients and also 
                cash on deliveries are avaliable
               <br />
                Our online shopping website provides varities of delivery and time saving methods ,allow busy peoples to receive their goods within the short period of time.
            </h2>

        </div>
          
        <div class="contact"> 
            <h1> <u>Contact us :</u> </h1>
            
                <a href="hello" >
                    <img src="IMG_20221009_220558.png" class="facebook" />
    
                 </a>

      
                 <a href="hi">
                     <img src="email.jpg" class="facebook" />
                  
                 </a> 
                  
        </div>
    </form>
</body>
</html>
