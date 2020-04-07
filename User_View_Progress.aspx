<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_View_Progress.aspx.cs" Inherits="User_View_Progress" %>


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
            color: #FF0066;
        }
        .auto-style7 {
            color: #009933;
            font-size: xx-large;
            background-color: #99CCFF;
        }
        .auto-style8 {
            color: #CC3300;
        }
        </style>


       <script type="text/javascript">
         function CallPrint(strid) {
             var prtContent = document.getElementById(strid);
             var WinPrint = window.open('', '', 'letf=0,top=0,width=400,height=400,toolbar=0,scrollbars=0,status=0');
             WinPrint.document.write(prtContent.innerHTML);
             WinPrint.document.close();
             WinPrint.focus();
             WinPrint.print();
             WinPrint.close();

         }
         function btnPrint_onclick() {

         }

  </script>


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

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx" CssClass="auto-style5">LogOut</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">





                


            



                <br />
              
                Wellcome <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6"></asp:Label>
                </strong>
                 <br />   <br />
               <input type="button" value="print " id="btnPrint" runat="Server" onclick="javascript:CallPrint('mydiv')" class="auto-style7"  />
                
<div id='mydiv'>

    <h1>

        <span class="auto-style8">Progress Report</span>
    </h1>

               <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
               <br />
               <br />




            

    </div>


           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>