<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="www.Megamart.com.orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your orders</title>
    <style>
        .logo img {
            margin-left: 300px;
            margin-top: -20px;
            width: 200px;
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
        .arrow img {
            position: relative;
            top: 100px;
            left: 80px;
            width:100px;
        }
         .gridview{
            position:absolute;
            left:800px;
            top:500px;
        }

         .sumlbl{
             position:absolute;
             left:800px;
             top:700px;
         }
          .order img{
             position:absolute;
              top:200px;
             left:50%;
            
         }
          h1{
              position:absolute;
              top:300px;
              left:40%;
              background-color:red;
              color:white;
              padding:5px;
          }
          .manage img{
              position:absolute;
              width:600px;
              left:65%;
              border-radius:200px;

          }
         .right p{
              position:absolute;
              top:130%;
              left:45%;
          }
         .cancel{
             position:absolute;
             top:800px;
             left:45%;
             font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
             background-color:blue;
             color:white;
             border-radius:10px;


         }
         .gridview.no{
             position:absolute;
             left:800px;
             top:40%;
             font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
             color:red;
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
         <p> MEGAMART ONLINE ORDERING AND SHOPPING</p>
       </div>
            
          <div class="arrow">
              
                   <a href="Welcome.aspx"> <img src="blackarrow.png" alt="backward" /></a>
            </div>

            <h1>Your orders</h1>

            <div class="order">
                 <img src="orders3.png" alt="orders" /> 
            </div>

            <div class="manage">
                <img src="manage2.png" alt="management" />
            </div>

            <!-- orders section -->
           <h3 class="sumlbl">Total price :  <asp:Label ID="lbltotal" Text="0" runat="server" ForeColor="black"></asp:Label></h3>
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
                <asp:Label CssClass="no" ID="noord" Text="" runat="server" ></asp:Label>
        </div>



        </div>


        <asp:Button CssClass="cancel" ID="ordercancel" runat="server" Text="CANCEL THE ORDER" OnClick="ordercancel_Click" />

        <br />
        <br />
        
        <br />
        <br />
         
        <br />
        <br />
         
        <br />
        <br />
         
        <br />
        <br />
        
   <div class="right">  <p>ALL RIGHTS ARE RESERVED</p></div>
        
    </form>
</body>
</html>
