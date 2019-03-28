using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PictureManage
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonUpload_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Upload.aspx");
        }

        protected void ButtonDisplay_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Display.aspx");
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Edit.aspx");
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Delete.aspx");
        }
    }
}