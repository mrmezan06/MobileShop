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
    public partial class Checkout : System.Web.UI.Page
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
            pnl_btns.Width = 1900;
            badgeUpdate();
            DataDisplay();

        }

        public void DataDisplay()
        {
            string username="";
            if (Session["user"] != null)
            {
                username = Session["user"].ToString();
            }

            SqlConnection sqlConn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MobileDB.mdf;Integrated Security = True");
            SqlCommand sqlCmd = new SqlCommand("select Name,Price from Info Where Id IN(SELECT ItemID from CartTable where Username = "+"'"+username+"')", sqlConn);

            sqlConn.Open();
            SqlDataReader sqlReader = sqlCmd.ExecuteReader();
            while (sqlReader.Read())
            {
                
                System.Web.UI.WebControls.Label lblName = new Label();
                String name = (String)sqlReader[0];
                lblName.Text = name + "<br/>";
                lblName.Font.Size = 28;
                pnl_btns.Controls.Add(lblName);

                System.Web.UI.WebControls.Label lblPrice = new Label();
                Int32 price = (Int32)sqlReader[1];
                lblPrice.Text =price+ "৳<br/>";
                lblPrice.Font.Size = 24;
                pnl_btns.Controls.Add(lblPrice);


            }



        }
        
        protected void cartDelete(object sender, EventArgs e)
        {
            string username = "";
            if (Session["user"] != null)
            {
                username = Session["user"].ToString();
            }
            
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from CartTable where Username = " + "'" + username + "'";

            cmd.ExecuteNonQuery();
            Response.Write("<script>window.alert('Checkout All Item and Flash all Info From DB!')</script>");

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

