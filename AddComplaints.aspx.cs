using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddComplaints : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            Label1.Text = Session["userid"].ToString();


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string userid = Label1.Text;
        string department = TextBox1.Text;
        string details = TextBox2.Text;
        string priority = "0";
        string status = "Pending";



        //Users_Complains(UserID,Department,Details,Date,PriorityNo,Status)
        string query = "insert into Users_Complains(UserID,Department,Details,Date,PriorityNo,Status) values('"+userid+"','"+department+"','"+details+"','"+DateTime.Now+"','"+priority+"','"+status+"')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();

        Label2.Text = "Your complaint is forwarded to complaint incharge. ";



    }



   

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddComplaints.aspx");
    }
}