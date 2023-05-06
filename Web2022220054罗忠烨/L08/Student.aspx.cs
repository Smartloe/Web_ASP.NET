using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L08
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Server.HtmlEncode(Request.QueryString["name"]) + "同学欢迎你加入CQUPT！";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Redirect.aspx");
        }
    }
}