using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string cnic, name, Password,Email,MobileNo,ParmanentAddress,UserType,Status,ResidantialAdd, Gender;


        cnic = txtCNIC.Text;
        name = txtName.Text;
        Password = txtPw.Text;
        Email = txtEmail.Text;
        MobileNo=txtMobileNo.Text;
        ParmanentAddress=txtParmenentAddress.Text;
        UserType=ddlUserType.Text;
        Status = "ok";

        FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
        string link = "images/" + Path.GetFileName(FileUpload1.FileName);
        ResidantialAdd=txtPostalAddress.Text; 
        Gender=ddlGender.Text;

                                                                                                                                                   //cnic,name,Password,Email,MobileNo,ParmanentAddress,UserType,Photo,Status,ResidantialAdd,Gender
        string query = "insert into Users(cnic,name,Password,Email,MobileNo,ParmanentAddress,UserType,Photo,Status,ResidantialAdd,Gender) VALUES ('"+cnic+"','"+name+"','"+Password+"','"+Email+"','"+MobileNo+"','"+ParmanentAddress+"','"+UserType+"','"+link+"','"+Status+"','"+ResidantialAdd+"','"+Gender+"')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        Label1.Text = "User is registered";

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisterationPage.aspx");
    }
}