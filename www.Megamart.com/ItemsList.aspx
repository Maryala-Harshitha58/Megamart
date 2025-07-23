<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation='false' CodeBehind="ItemsList.aspx.cs" Inherits="www.Megamart.com.ItemsList"   %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ITEMS LIST</title>
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
      .about .name{
          position:absolute;
          font-size:60px;
          font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
          top:21%;
          left:41%;
      }
      .about .address{
          
          position:absolute;
          font-size:35px;
          font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
          top:30%;
          left:34%;
      }
      .about .email{
          position:absolute;
          top:36%;
          left:33%;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
           font-size:20px;

      }
      .about .phnumber{
            position:absolute;
            top:36%;
              font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            left:54%;
             font-size:20px;


      }
      .about .date{
            position:absolute;
            top:40%;
            font-size:20px;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            left:54%;
      }
      .userdetails .lastname{
          position:absolute;
          top:390px;
          width:400px;
          left:500px;

      }
        .userdetails .lastname p {
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size:20px;
        }
        .userdetails .useremail p {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 20px;
        }
                .userdetails .userphone p {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 20px;
        }

      .userdetails .useremail{
          position:absolute;
          top:390px;
          left:835px;

      }
        .userdetails .userphone{
          position:absolute;
          top:420px;
          left:835px;

      }
        .gridview{
            position:absolute;
            left:700px;
            top:600px;
        }
        .prices{
            position:absolute;
            top:78%;
            left:60%;
        }
        .prices .countitems{
            padding:10px;
        }
        .prices .totalitems{
            padding:10px;
        }
        .deletebtn{
            position:absolute;
            top:66%;
            left:60%;
        }
        .deletebtn .textdel{
            position:absolute;
            background-color:midnightblue;
           
            
        }
        .deletebtn .buttondeletee{
            margin-left:60px;
            font-family:'Times New Roman', Times, serif;
            
        }
        .down .load{
            position:absolute;
            top:1000px;
            left:43%;
        }
          .down .btnnext{
            position:absolute;
            top:1200px;
            left:80%;
        }
          .lastrights{
              position:absolute;
              top:1300px;
              left:43%;
          }
          .down .forgot{
              position:absolute;
              top:480px;
              left:80%;
              background-color:yellow;
              color:red;
              font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
              border-radius:13px;
              border-style:groove;
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
            if (document.getElementById("textdel").value == '') {
                document.getElementById("id1").innerHTML = speak("Enter product id to delete the item from list ");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <div class="logo">
             <img src="1663343020745.png" alt="logo" />
             <p>  MEGAMART PRODUCT ORDERING AND SHOPPING PLATFORM  </p>
         </div>
            <div class="about">
                <asp:Label ID="duplicate" ForeColor="White" runat="server"></asp:Label>
                <asp:Label ID="duplicateusername" ForeColor="White" runat="server"></asp:Label>
                <asp:Label ID="duplicatedynamictable" runat="server" ForeColor="White"></asp:Label>
                <asp:Label CssClass="name" ID="name" Text=" n" runat="server" ></asp:Label>
                <asp:Label CssClass="address" runat="server" Text="address" ID="address"></asp:Label>
                <asp:Label CssClass="phnumber" ID="phnumber" Text="" runat="server" ></asp:Label>
                <asp:Label ID="email" runat="server" Text="email" CssClass="email" ></asp:Label>
                <asp:Label CssClass="date" ID="datetime" runat="server" Text=" "></asp:Label>
            </div>
            <div class="userdetails">
                <div class="lastname"><p> CUSTOMER NAME : <asp:Label ID="lastname"  runat="server" Text="lastname"></asp:Label> </p></div>
               <div class="useremail"> <p> Email :<asp:Label ID="useremail" runat="server"  Text="useremail"></asp:Label> </p> </div> 
             <div class="userphone"> <p> CUSTOMER PHONE :  <asp:Label ID="userphone" runat="server"  Text="userphone"></asp:Label> </p> </div>
            </div> 

        </div>
        <div class="gridview">
            <asp:GridView ID="GridView1" runat="server" Width="352px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
        </div>

        <div class="down">
            <asp:Button runat="server"  CssClass="forgot" Text="Click for Buy Forgotted Items" OnClick="Unnamed1_Click" />
            <asp:button id="buttondwn" CssClass="load" runat="server" Font-Bold="true"  Width="150px" BackColor="Red" ForeColor="White" Text="Download" OnClick="buttondwn_Click" >



            </asp:button>
            <asp:button ID="nextbutton" CssClass="btnnext" runat="server"   Text="Next " Font-Bold="true" BackColor="#000066" ForeColor="White" Width="150px" OnClick="nextbutton_Click" ></asp:button>
        </div>


        <div class="deletebtn">
            <asp:TextBox  ID="textdel" onfocus="del()" runat="server" Width="200px" placeholder="Enter product ID"></asp:TextBox> <br />
            <br />
            <asp:Button ID="buttondelete" CssClass="buttondeletee" runat="server" Text="DELETE" OnClick="buttondelete_Click" />
            <br />
            <asp:Label ID="labelmode" color="red" Text="" runat="server" ></asp:Label>
        </div>



      
     <div class="prices">
        <h4>Total Items :<asp:Label CssClass="countitems" runat="server" ID="countitems" Text=""></asp:Label></h4>
        <h4>Total  Price :<asp:Label CssClass="totalitems" runat="server" ID="totalPrice" Text=""></asp:Label></h4>

     </div>


        <div class="lastrights">
             
            
            <p>All Rights are Reserved</p>
             <br />
        </div>
    </form>
</body>
</html>
