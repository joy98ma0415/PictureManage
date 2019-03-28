using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace PictureManage
{
    public partial class Upload : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection(@"Data Source=azurewebapplication.database.windows.net;Initial Catalog=webapp;User ID=joy51744;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        private SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void ButtonUpload_Click(object sender, EventArgs e)
        {
            conn.Open();

            if (!FileUpload1.HasFile)
            {
                LabelMessage.Text = "Please insert image..";
            }
            else
            {
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
                SqlCommand cmd = new SqlCommand("insert into Image" + "(name,image) values (@name,@image)", conn);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@image", pic);
                cmd.ExecuteNonQuery();
                LabelMessage.Text = "Uploaded..";
            }
        }
    }
}