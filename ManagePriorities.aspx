<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagePriorities.aspx.cs" Inherits="ManagePriorities" %>

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
            color: #CC3300;
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>Complaint Incharge Priorities the complaints


            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/InchargeHome.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ManagePriorities.aspx" CssClass="auto-style5">Manage Priorities</asp:HyperLink>

                &nbsp;|<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Incharge_View_Progress.aspx" CssClass="auto-style5">view Progress</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx" CssClass="auto-style5">LogOut</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">





                


            



                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Complaint List "></asp:Label>
                </strong>
              




                


            



                <br />
              
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ComplainID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="ComplainID" HeaderText="ComplainID" InsertVisible="False" ReadOnly="True" SortExpression="ComplainID" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="PriorityNo" HeaderText="PriorityNo" SortExpression="PriorityNo" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaskTrackerFinalDBConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Users_Complains]" UpdateCommand="update [Users_Complains] set PriorityNo=@PriorityNo,status=@status where complainID=@complainID" DeleteCommand="delete from [Users_Complains]  where complainID=@complainID" >

                </asp:SqlDataSource>
              
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Task List"></asp:Label>
                </strong>
              
               <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                        <asp:BoundField DataField="complaintID" HeaderText="complaintID" SortExpression="complaintID" />
                        <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                        <asp:BoundField DataField="Priority" HeaderText="Priority" SortExpression="Priority" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="AssigningDate" HeaderText="AssigningDate" SortExpression="AssigningDate" />
                        <asp:BoundField DataField="CompletionDate" HeaderText="CompletionDate" SortExpression="CompletionDate" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TaskTrackerFinalDBConnectionString %>" SelectCommand="SELECT * FROM [TaskList] ORDER BY [Priority] DESC" UpdateCommand="update tasklist set priority=@priority, status=@status,CompletionDate=@CompletionDate  where complaintid=@complaintid">

                </asp:SqlDataSource>
                <br />
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