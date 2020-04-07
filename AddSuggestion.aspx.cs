using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddSuggestion : System.Web.UI.Page
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
        string title = TextBox1.Text;
        string message = TextBox2.Text;
       


        //Users_Complains(UserID,Department,Details,Date,PriorityNo,Status)
        string query = "insert into User_Suggestions(UserID,title,message,Date) values('" + userid + "','" + title + "','" + message + "','" + DateTime.Now + "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();

        Label2.Text = "Thank you for your suggestions! ";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddComplaints.aspx");



    }
}