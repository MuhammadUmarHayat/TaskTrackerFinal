using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string userid = TextBox1.Text;
        string email = TextBox2.Text;

        string sqlEmail = "";



        string query = "select * from Users where cnic='" + userid + "' ";

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

        if (dt.Rows.Count > 0)
        {

            sqlEmail = dt.Rows[0]["Email"].ToString();
           
           

        }



        if (email.Equals(email))
        {
            Random random = new Random();
            int number = random.Next(123456,789456);
            string pw = userid + number;

            update(userid, pw);
            //SendEmail(string pGmailEmail, string pGmailPassword, string pTo, string pSubject, string pBody, System.Web.Mail.MailFormat pFormat, string pAttachmentPath)
            MailSender.SendEmail("@gmail.com","pw", "@gmail.com","New Password is generated",pw, System.Web.Mail.MailFormat.Text, "");


        }
        else
        {
            Label1.Text = "Your Email or UserID is wrong";

        }

    }

   

    private void update(string userid, string pw)
    {

        SqlConnection conn = new SqlConnection(DBClass.connectionString);

        string query = "UPDATE users SET password='" + pw + "' WHERE cnic = '" + userid + "'";


        SqlCommand sqlCmd = new SqlCommand(query, conn);
        conn.Open();
        sqlCmd.ExecuteNonQuery();// insertion into db
        conn.Close();
        Label1.Text = "Password has been changed seccessfully and sent to your email address";
    }
}