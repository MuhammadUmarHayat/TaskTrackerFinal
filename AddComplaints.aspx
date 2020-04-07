<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddComplaints.aspx.cs" Inherits="AddComplaints" %>

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
            width: 100%;
        }
        .auto-style7 {
            font-size: xx-large;
            color: #CC3300;
        }
        .auto-style8 {
            color: #FF0066;
        }
        .auto-style9 {
            color: #003300;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>User Pannel

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserHome.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AddComplaints.aspx" CssClass="auto-style5">Add Complaints</asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/EditComplaints.aspx" CssClass="auto-style5">Edit/Delete Complaints</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/User_View_Progress.aspx" CssClass="auto-style5">View Progress</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AddSuggestion.aspx" CssClass="auto-style5">Give Suggestions</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">





                


            



                <br />
              
               <br />


               <center>




                   <table class="auto-style6">
                       <tr>
                           <td colspan="3"><strong><span class="auto-style7">Add Complaints</span></strong> </td>
                       </tr>
                       <tr>
                           <td>Complaint by</td>
                           <td><strong>
                               <asp:Label ID="Label1" runat="server" CssClass="auto-style8"></asp:Label>
                               </strong></td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>Enter the name of department </td>
                           <td>
                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>Enter&nbsp; details of your complaint</td>
                           <td>
                               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td><strong>
                               <asp:Label ID="Label2" runat="server" CssClass="auto-style9"></asp:Label>
                               </strong></td>
                           <td>
                               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                   </table>




               </center>



               <br />
               <br />




            




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>