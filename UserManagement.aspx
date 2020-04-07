<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserManagement.aspx.cs" Inherits="UserManagement" %>

<!DOCTYPE html>
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

                <h1 class="auto-style1"><strong>Administrator User Management

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RegisterationPage.aspx" CssClass="auto-style5">Register Users</asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/UserManagement.aspx" CssClass="auto-style5">Edit /Delete Users</asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Reports.aspx" CssClass="auto-style5">Reports</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ForgetPassword.aspx" CssClass="auto-style5">LogOut</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">





                


            



                <br />
              
                <div class="auto-style1">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="cnic" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="cnic" HeaderText="cnic" ReadOnly="True" SortExpression="cnic" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                            <asp:BoundField DataField="ParmanentAddress" HeaderText="ParmanentAddress" SortExpression="ParmanentAddress" />
                            <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:BoundField DataField="ResidantialAdd" HeaderText="ResidantialAdd" SortExpression="ResidantialAdd" />
                        </Columns>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaskTrackerFinalDBConnectionString %>" SelectCommand="SELECT [cnic], [name], [Email], [MobileNo], [ParmanentAddress], [UserType], [Status], [ResidantialAdd] FROM [Users]" UpdateCommand="update  Users set  [name]=@name, [Email]=@Email, [MobileNo]=@MobileNo, [ParmanentAddress]=@ParmanentAddress, [UserType]=@UserType, [Status]=@Status, [ResidantialAdd]=@ResidantialAdd where cnic=@cnic" DeleteCommand="Delete from users where cnic=@cnic">

                    </asp:SqlDataSource>
                </div>
              
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