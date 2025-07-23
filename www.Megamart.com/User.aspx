<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="www.Megamart.com.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> USER</title>
    
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.cssrel" rel="stylesheet" />
    

    <style>
        body{
                  background-repeat:no-repeat;
                  background-image:url("world.jpg");
            background-size:cover;
          
          
            

        }
        .user{
            margin-top:-1%;
            margin-left:33%;
            padding:35px;
            width:630px;
            height:600px;
          background-image:linear-gradient(to top left,blue,white ); 
            border-radius:17px;
            cursor:pointer;
           
        }
        .user img{
            width:200px;
            border-radius:60%;
            position:relative;
            left:210px;
            top:-160px;


        }
        .user .jaf .mode{
            color:black;
        }
        .user .jaf{
            position:relative;
            left:80px;
            top:-80px;
            color:black;
        }
        .user h4{
            position:relative;
            top:-150px;
            left:280px;

        }
        .heading img {
            width:150px;
            position:relative;
            left:350px;
            top:-100px;
           

        }
        .heading p{
            color:white;
            position:relative;
            left:500px;
            top:-240px;
            font-size:40px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
        .arrow img{
            position:relative;
            top:100px;
            left:80px;
        }
        .edit{
            width:150px;
            height:40px;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
             border-radius:12px;
             font-size:25px;
             position:relative;
             margin-left:45%;
             margin-top:90px;
        }
        .user .mode{
            color:black;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="name" runat="server"></asp:Label>
        <div>
            <div class="arrow">
              
                   <a href="Home.aspx"> <img src="icons8-circle-50.png" alt="backward" /></a>
            </div>
            <div class="heading">
                <img src="1663343020745.png" alt="logo" />
                <p> <u>MEGAMART ONLINE PRODUCT ORDERING AND SHOPPING</u> </p>


            </div>
            <div class="user">
                <img src="userlogo.jpg" alt="userlogo" />
                <h4 class="pro">
                    <u>PROFILE </u></h4>

            <h3 class="jaf">FIRSTNAME : 
              
               <asp:Label CssClass="mode" runat="server" ID="fname"></asp:Label> </h3>
                <br />
               
                <h3 class="jaf">
                    LASTNAME :
                    
                   <asp:Label CssClass="mode" runat="server" ID="lname"></asp:Label>
                </h3>
                <br />
                 
                <h3 class="jaf"> EMAIL : 
                   <asp:Label CssClass="mode" runat="server" ID="eemail"></asp:Label> </h3>
                 <br />
                <h3 class="jaf"> GENDER : 
                    
                     <asp:Label CssClass="mode" ID="ggender" runat="server"  ></asp:Label>
                    </h3> 
                <br />
                <h3 class="jaf">PHONE :
                    
                    <asp:Label CssClass="mode" ID="pphone" runat="server"></asp:Label>

                      </h3>
                <br />

            </div>
            <div  >
                <asp:Button  CssClass="edit" ID="buttonedit" runat="server" Text=" EDIT"  />
             </div> 

        </div>
    </form>
</body>
</html>
