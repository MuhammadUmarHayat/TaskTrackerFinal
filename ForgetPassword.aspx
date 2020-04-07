<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Task Tracker </title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #9900CC;
            font-size: xx-large;
        }
        .auto-style5 {}
        .auto-style6 {
            width: 34%;
        }
        .auto-style7 {
            font-size: x-large;
            text-align: center;
            color: #CC3300;
        }
        .auto-style8 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>Task Tracker

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RegisterationPage.aspx" CssClass="auto-style5">Register</asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ForgetPassword.aspx" CssClass="auto-style5">Forget Password</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">

               <table align="center" class="auto-style6">
                   <tr>
                       <td class="auto-style7" colspan="3"><strong>Forget Password</strong></td>
                   </tr>
                   <tr>
                       <td>Please enter your userid</td>
                       <td>
                           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>please enter email</td>
                       <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td><strong>
                           <asp:Label ID="Label1" runat="server" CssClass="auto-style8"></asp:Label>
                           </strong></td>
                       <td>
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reset Password" Width="100px" />
                       </td>
                       <td>&nbsp;</td>
                   </tr>
               </table>





                


            



                <br />
              
               <br />
               <br />
               <br />




            




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>