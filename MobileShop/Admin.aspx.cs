using System;
using System.Data;
using System.Data.SqlClient;

namespace MobileShop
{
    public partial class Admin : System.Web.UI.Page
    {
        protected System.Web.UI.HtmlControls.HtmlInputFile File1;
        protected System.Web.UI.HtmlControls.HtmlInputButton Submit1;
        SqlConnection connect = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MobileDB.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();

        }

        protected void I_Click(object sender, EventArgs e)
        {
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                string fileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("upload") + "\\" + fileName;

                try
                {

                    FileUpload1.PostedFile.SaveAs(SaveLocation);
                    SqlCommand cmd = connect.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into Info values ('" + Name.Text + "','" + Convert.ToInt32(Price.Text) + "','" + fileName + "','" + Details.Text + "')";

                    cmd.ExecuteNonQuery();
                    Name.Text = "";
                    Price.Text = "";
                    Details.Text = "";
                    Response.Write("<script>window.alert('Submission Done!')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>window.alert('Error While Uploading!')</script>");
                }
            }
            else
            {
                Response.Write("<script>window.alert('No File Detect!')</script>");
            }
        }
    }
}
