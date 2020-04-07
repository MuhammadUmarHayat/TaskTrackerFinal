<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditComplaints.aspx.cs" Inherits="EditComplaints" %>

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

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx" CssClass="auto-style5">LogOut</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">





                


            



                <br />
              
                Wellcome <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6"></asp:Label>
                </strong>
              
               <br />
               <br />
               <br />




            




                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ComplainID" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ComplainID" HeaderText="ComplainID" InsertVisible="False" ReadOnly="True" SortExpression="ComplainID" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TaskTrackerFinalDBConnectionString %>" SelectCommand="SELECT DISTINCT [ComplainID], [UserID], [Department], [Details], [Date], [Status] FROM [Users_Complains] WHERE ([UserID] = @UserID)" UpdateCommand="update [Users_Complains] set details=@details,department=@department where complainid=@complainid" DeleteCommand=" delete from [Users_Complains] where complainid=@complainid">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserID" SessionField="UserID" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaskTrackerFinalDBConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Users_Complains] WHERE ([UserID] = @UserID)" UpdateCommand="update [Users_Complains] set details=@details,department=@department where complainid=@complainid" DeleteCommand=" delete from [Users_Complains] where complainid=@complainid">
                    <SelectParameters>
                        <asp:RouteParameter Name="UserID" RouteKey="UserId" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>




            




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>