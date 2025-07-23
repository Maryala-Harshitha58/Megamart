<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paydetails.aspx.cs" Inherits="www.Megamart.com.paydetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <table>
               <tr>
                   <td>
                       <h3>Name  :</h3>
                   </td>
                   <td>
                       <asp:TextBox ID="txtname" runat="server" placeholder="Name"> </asp:TextBox>

                   </td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" *Name Required" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
               </tr>
               <tr>
                   <td>
                      <h3>
                          Email :
                      </h3>
                   </td>
                   <td>
                       <asp:TextBox ID="txtemail" runat="server" ></asp:TextBox>
                   </td>
                   <td>
                        

                   </td>
               </tr>

               <tr>
                   <td>

                   </td>
               </tr>
           </table>
        </div>
    </form>
</body>
</html>
