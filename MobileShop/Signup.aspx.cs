using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MobileShop
{
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MobileDB.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            // Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = "H:\Asp Project\MobileShop\MobileShop\App_Data\MobileDB.mdf"; Integrated Security = True

            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            

        }
        protected void SignUp(object sender, EventArgs e)
        {


            if(checkEmail(Email.Text))
            {
                Response.Write("<script>window.alert('This Email Already in Used!')</script>");
            }
            else if (checkUsername(Username.Text))
            {
                Response.Write("<script>window.alert('This Username Already in Used!')</script>");
            }
            else if (Password.Text != cPassword.Text)
            {
                Response.Write("<script>window.alert('The Password didnot match!')</script>");
            }
            else
            {
                SqlCommand cmd = connect.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into UserInfo values ('" + Email.Text + "','" + Username.Text + "','" + Password.Text + "')";

                cmd.ExecuteNonQuery();
                Email.Text = "";
                Username.Text = "";
                Password.Text = "";

                Response.Write("<script>window.alert('User Created!')</script>");
                Response.Redirect("Login.aspx");
            }
            
         }
        protected Boolean checkEmail(string email)
        {
            SqlConnection sqlConn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MobileDB.mdf;Integrated Security = True");
            SqlCommand sqlCmd = new SqlCommand("select Email from UserInfo where Email"+"='"+email+"'", sqlConn);

            sqlConn.Open();
            SqlDataReader sqlReader = sqlCmd.ExecuteReader();
            if (sqlReader.Read())
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        protected Boolean checkUsername(string username)
        {
            SqlConnection sqlConn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MobileDB.mdf;Integrated Security = True");
            SqlCommand sqlCmd = new SqlCommand("select Username from UserInfo where Username" + "='" + username + "'", sqlConn);

            sqlConn.Open();
            SqlDataReader sqlReader = sqlCmd.ExecuteReader();
            if (sqlReader.Read())
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }

 }
