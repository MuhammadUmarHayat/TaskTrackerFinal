using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowTaskList();
    }


    private void ShowTaskList()
    {
        string query = "select * from TaskList order by Priority DESC";

        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
        DataTable dt = new DataTable();
        // Create a new data adapter based on the specified query.
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        //SQl command builder is used to get data from database based on query
        SqlCommandBuilder cmd = new SqlCommandBuilder(da);
        //Fill data table
        da.Fill(dt);
        con.Close();

        GridView1.DataSource = dt;
        GridView1.DataBind();


    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        

        Label1.Text = String.Format("{0:d/M/yyyy}", Calendar1.SelectedDate);
       // Label1.Text = Calendar1.SelectedDate.ToString();
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        Label2.Text = String.Format("{0:d/M/yyyy}", Calendar2.SelectedDate);

      //  Label2.Text = Calendar2.SelectedDate.ToString();
    }




    private void ShowReport(string startingDate,string endingDate)
    {
       

        string query = "select * from TaskList where CompletionDate between '" + Calendar1.SelectedDate + "' and '"+ Calendar2.SelectedDate + "'";

        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
        DataTable dt = new DataTable();
        // Create a new data adapter based on the specified query.
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        //SQl command builder is used to get data from database based on query
        SqlCommandBuilder cmd = new SqlCommandBuilder(da);
        //Fill data table
        da.Fill(dt);
        con.Close();

        GridView1.DataSource = dt;
        GridView1.DataBind();
        CountTotal();
        CountTaskCompleted();
        CountTaskNotCompleted();


    }


    private void CountTotal()
    {


        string query = "select count(*) from TaskList where CompletionDate between '" + Calendar1.SelectedDate + "' and '" + Calendar2.SelectedDate + "'";

        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
        DataTable dt = new DataTable();
        // Create a new data adapter based on the specified query.
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        //SQl command builder is used to get data from database based on query
        //  SqlCommandBuilder cmd = new SqlCommandBuilder(da);
        SqlCommand cmd = new SqlCommand(query,con);
        string total=cmd.ExecuteScalar().ToString();
        Label3.Text = " Total Complaints : " + total;
        


    }
    private void CountTaskCompleted()
    {


        string query = "select count(*) from TaskList where CompletionDate between '" + Calendar1.SelectedDate + "' and '" + Calendar2.SelectedDate + "' and status='done'";

        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
        DataTable dt = new DataTable();
        // Create a new data adapter based on the specified query.
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        //SQl command builder is used to get data from database based on query
        //  SqlCommandBuilder cmd = new SqlCommandBuilder(da);
        SqlCommand cmd = new SqlCommand(query, con);
        string total = cmd.ExecuteScalar().ToString();
        Label4.Text = " Total Completed Complaints  : " + total;



    }


    private void CountTaskNotCompleted()
    {


        string query = "select count(*) from TaskList where CompletionDate between '" + Calendar1.SelectedDate + "' and '" + Calendar2.SelectedDate + "' and status<>'done'";

        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
        DataTable dt = new DataTable();
        // Create a new data adapter based on the specified query.
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        //SQl command builder is used to get data from database based on query
        //  SqlCommandBuilder cmd = new SqlCommandBuilder(da);
        SqlCommand cmd = new SqlCommand(query, con);
        string total = cmd.ExecuteScalar().ToString();
        Label5.Text = "Pending Complaints : " + total;



    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string startingDate = Label1.Text;
        string endingDate = Label2.Text;
        ShowReport(startingDate, endingDate);
    }
}