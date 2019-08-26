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
    public partial class FAQ : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MobileDB.mdf;Integrated Security = True");
        public static int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = "H:\Asp Project\MobileShop\MobileShop\App_Data\MobileDB.mdf"; Integrated Security = True

            if (Session["user"] != null)
            {
                UserLab.Text = Session["user"].ToString();
            }

            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();

            badgeUpdate();

        }
        private void badgeUpdate()
        {
            string username = "";
            if (Session["user"] != null)
            {
                username = Session["user"].ToString();
            }

            SqlConnection sqlConn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MobileDB.mdf;Integrated Security = True");
            SqlCommand sqlCmd = new SqlCommand("select count(*) from CartTable where Username = " + "'" + username + "'", sqlConn);

            sqlConn.Open();
            SqlDataReader sqlReader = sqlCmd.ExecuteReader();
            while (sqlReader.Read())
            {
                i = Convert.ToInt32(sqlReader[0]);
            }
            badge.Text = "" + i;
        }
        protected void SetSession(object sender, EventArgs e)
        {

            Button who = (Button)sender;
            Session["selected"] = who.Text;
            Response.Redirect("ProductDropDown.aspx");
        }
        protected void SetSearch(object sender, EventArgs e)
        {


            Session["selected"] = searchText.Text;
            Response.Redirect("ProductDropDown.aspx");
        }
    }
}