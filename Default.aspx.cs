using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string usertype = DropDownList1.Text;
        string userid = TextBox1.Text;
        string pw = TextBox2.Text;
        string query = "select * from Users where cnic='" + userid + "' and password='" + pw + "' and usertype='"+usertype+"'";

        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
        DataTable dtusers = new DataTable();
        // Create a new data adapter based on the specified query.
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        //SQl command builder is used to get data from database based on query
        SqlCommandBuilder cmd = new SqlCommandBuilder(da);
        //Fill data table
        da.Fill(dtusers);
        con.Close();
        if (usertype.Equals("Administrator") && userid.Equals("admin") && pw.Equals("admin"))
        {
            Response.Redirect("AdminPannel.aspx");
        }
        //ComplaintIncharge
        else if (dtusers.Rows.Count > 0)
        {
            if (usertype.Equals("ComplaintIncharge"))
            {
                Session["userid"] = userid;

                Response.Redirect("InchargeHome.aspx");

            }
            else if (usertype.Equals("User"))
            {
                Session["userid"] = userid;
                Response.Redirect("UserHome.aspx");

            }


        }
        else
        {

            Label1.Text = "CNIC and/or Password is wrong";

        }
    }
}