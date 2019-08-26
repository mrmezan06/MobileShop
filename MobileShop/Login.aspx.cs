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
    public partial class Login : System.Web.UI.Page
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
        protected void SignIn(object sender, EventArgs e)
        {
            if (checkAdmin.Checked)
            {
                if(lUser.Text=="admin" && lPass.Text == "admin")
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Write("<script>window.alert('Wrong Admin Username or Password!')</script>");
                }
                
            }
            else
            {
                if (checkUsername(lUser.Text, lPass.Text))
                {
                    Session["user"] = lUser.Text;
                    Response.Redirect("HomePgae2.aspx");
                }
                else
                {
                    Response.Write("<script>window.alert('Wrong Username or Password!')</script>");
                }
            }

        }
        protected Boolean checkUsername(string username, string pass)
        {
            SqlConnection sqlConn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MobileDB.mdf;Integrated Security = True");
            SqlCommand sqlCmd = new SqlCommand("select Password from UserInfo where Username" + "='" + username + "'", sqlConn);

            sqlConn.Open();
            SqlDataReader sqlReader = sqlCmd.ExecuteReader();
            if (sqlReader.Read())
            {
                if (pass.Equals(sqlReader[0]))
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            else
            {
                return false;
            }
        }
        protected void SignUp(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }
    }
}