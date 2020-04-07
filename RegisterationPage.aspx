<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterationPage.aspx.cs" Inherits="RegisterationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Task Tracker </title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style5 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>Registeration Form

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RegisterationPage.aspx" CssClass="auto-style5">Register</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">




               <table align="center">
                   <tr>
                       <td class="auto-style1" colspan="3"><strong>
                          Fill the form 

                                                           </strong></td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Enter Yoour CNIC</td>
                       <td>
                           <asp:TextBox ID="txtCNIC" runat="server" CssClass="auto-style5"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCNIC" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Enter Name</td>
                       <td>
                           <asp:TextBox ID="txtName" runat="server" CssClass="auto-style5"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Gender</td>
                       <td>
                           <asp:DropDownList ID="ddlGender" runat="server">
                               <asp:ListItem>Male</asp:ListItem>
                               <asp:ListItem>Female</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlGender" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Password</td>
                       <td>
                           <asp:TextBox ID="txtPw" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPw" ControlToValidate="txtRPw" ErrorMessage="Not match"></asp:CompareValidator>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPw" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Retype Password</td>
                       <td>
                           <asp:TextBox ID="txtRPw" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtRPw" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Email</td>
                       <td>
                           <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style5"></asp:TextBox>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formate not match" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Mobile No</td>
                       <td>
                           <asp:TextBox ID="txtMobileNo" runat="server" CssClass="auto-style5"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">UserType</td>
                       <td>
                           <asp:DropDownList ID="ddlUserType" runat="server">
                               <asp:ListItem>ComplaintIncharge</asp:ListItem>
                               <asp:ListItem>User</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlUserType" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Parmanent Address</td>
                       <td>
                           <asp:TextBox ID="txtParmenentAddress" runat="server" CssClass="auto-style5" Height="124px" TextMode="MultiLine" Width="201px"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtParmenentAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Postal Address</td>
                       <td>
                           <asp:TextBox ID="txtPostalAddress" runat="server" CssClass="auto-style5" Height="124px" TextMode="MultiLine" Width="201px"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtPostalAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Add Photo</td>
                       <td>
                           <asp:FileUpload ID="FileUpload1" runat="server" />
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5"><strong>
                           <asp:Label ID="Label1" runat="server"></asp:Label>
                           </strong></td>
                       <td>
                           <asp:Button ID="Button1" runat="server" Text="Register" CssClass="auto-style5" OnClick="Button1_Click" />
                       &nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="auto-style5" OnClick="Button2_Click" CausesValidation="False" />
                       </td>
                       <td>&nbsp;</td>
                   </tr>
               </table>




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>