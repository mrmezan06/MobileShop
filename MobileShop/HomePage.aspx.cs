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
    public partial class HomePage : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MobileDB.mdf;Integrated Security = True");
        public static int i=0;
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
            image_card.Width=1900;

            DataDisplay();
            badgeUpdate();
          
        }
        public void DataDisplay()
        {

            SqlConnection sqlConn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MobileDB.mdf;Integrated Security = True");
            SqlCommand sqlCmd = new SqlCommand("select Id,Name,Price,ImageURL,Details from Info", sqlConn);

            sqlConn.Open();
            SqlDataReader sqlReader = sqlCmd.ExecuteReader();
            while (sqlReader.Read())
            {
                System.Web.UI.WebControls.Image img = new Image();
                img.ImageUrl = "upload//" + sqlReader[3];
                img.CssClass = "card-img-top";
                img.Height = 243;
                img.Width = 207;
                img.AlternateText = "Card image cap";
                image_card.Controls.Add(img);

                System.Web.UI.WebControls.Label lblName = new Label();
                String name = (String)sqlReader[1];
                lblName.Text = "<div class=\"card - body\">" + name + "<br/>";
                lblName.CssClass = "card-title";
                lblName.Font.Size = 28;
                image_card.Controls.Add(lblName);

                System.Web.UI.WebControls.Label lblPrice = new Label();
                Int32 price = (Int32)sqlReader[2];
                lblPrice.Text = price + "৳<br/>";
                lblPrice.CssClass = "card-title";
                lblPrice.Font.Size = 24;
                image_card.Controls.Add(lblPrice);

                System.Web.UI.WebControls.Label lbldetails = new Label();
                String details = (String)sqlReader[4];
                lbldetails.Text =  details + "<br/>";
                lbldetails.Font.Size = 24;
                image_card.Controls.Add(lbldetails);

                Button btn = new Button();

                //Button id is Info  Table ID in String Mode
                btn.ID = "" + sqlReader[0];
                btn.Text = "Add Cart";
                btn.CssClass = "btn btn-dark";
                btn.Click += btn_Click;
                image_card.Controls.Add(btn);

            }


        }

       
        

        private void btn_Click(object sender, EventArgs e)
        {
            i += 1;
            Button tapped = (Button)sender;
            //Response.Write(tapped.ID);
            //getusername//insert tappedid in cart table
            //also update badge label
            string username = UserLab.Text;
            badge.Text = ""+i;

            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into CartTable values ('" + username + "','" + tapped.ID + "')";

            cmd.ExecuteNonQuery();
         
            Response.Write("<script>window.alert('Added to Cart!')</script>");

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



