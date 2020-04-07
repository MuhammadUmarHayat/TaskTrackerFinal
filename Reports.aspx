<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>


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
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            color: #CC3300;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style8 {
            width: 292px;
        }
        .auto-style9 {
            color: #CC0066;
            font-size: x-large;
        }
        .auto-style10 {
            color: #006600;
            font-size: x-large;
        }
        .auto-style11 {
            color: #FFFF66;
            font-size: xx-large;
        }
        .auto-style12 {
            color: #FF0000;
            font-size: xx-large;
        }
        .auto-style13 {
            color: #00CC00;
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>Administrator

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/UserRegistration.aspx" CssClass="auto-style5">Register Users</asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/UserManagement.aspx" CssClass="auto-style5">Edit /Delete Users</asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Reports.aspx" CssClass="auto-style5">Reports</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ForgetPassword.aspx" CssClass="auto-style5">LogOut</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">





                


            



                <br />
              
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style7" colspan="3"><strong>Reports </strong></td>
                    </tr>
                    <tr>
                        <td>Starting Date</td>
                        <td class="auto-style8">
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                            </asp:Calendar>
                        </td>
                        <td><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Label"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>Ending Date</td>
                        <td class="auto-style8">
                            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#000099" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged" Width="220px">
                                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                <TitleStyle BackColor="White" BorderColor="#FFFF66" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#990000" Height="25px" />
                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar>
                        </td>
                        <td><strong>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style8">


                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate Report" />



                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style8">


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



                        </td>
                        <td><strong>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style12"></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style11"></asp:Label>
                            <br />
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style13"></asp:Label>
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
              
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