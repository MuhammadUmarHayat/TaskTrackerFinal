using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagePriorities : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  ShowTaskList();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (GridView1.SelectedIndex == i)
            {

                string complaintID = GridView1.Rows[i].Cells[1].Text;


                string userid = GridView1.Rows[i].Cells[2].Text;
                string details=GridView1.Rows[i].Cells[4].Text;
                string priority = GridView1.Rows[i].Cells[6].Text;
                string status= GridView1.Rows[i].Cells[7].Text;


               AddToTAskList(userid, complaintID,details, priority, status);
            }
        }


        //  ShowTaskList();

        Response.Redirect("ManagePriorities.aspx");//refresh the page



    }
    private void AddToTAskList(string userid,string complaintID,string details,string priority,string status)
    {

/*
        DataTable dt = new DataTable();
        dt.Columns.Add("userid");
        dt.Columns.Add("complaintID");
        dt.Columns.Add("priority");
        dt.Columns.Add("status");

        DataRow row = dt.NewRow();
        row["userid"] = userid;
       
        row["complaintID"] = complaintID;
        row["priority"] = priority;
        row["status"] = status;

        dt.Rows.Add(row);
        GridView2.DataSource = dt;
        GridView2.DataBind();


        */

        //Users_Complains(UserID,Department,Details,Date,PriorityNo,Status)
        string query = "insert into TaskList(userid, complaintID,details, priority, status,AssigningDate) values('" + userid + "','" + complaintID + "','" + details + "','" + priority + "','" + status + "','" + DateTime.Now.Date + "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();

        Label1.Text = "Complain is added to the task list ";
       // ShowTaskList();

    }



  



    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {



       


       


    }
}