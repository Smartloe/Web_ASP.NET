using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L09
{
    public partial class Server : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "这段内容将显示一条直线<hr />";
            Label2.Text = $"这段内容将显示{Server.HtmlEncode("<hr />")}字符串";
            Label3.Text = $"这条链接的内容将丢失<a href=../L08/Student.aspx?name=Li Lei>Student?name=Li lei</a>";
            Label4.Text = $"这条链接内容即使不加&quot;也不会丢失<a href=../L08/Student.aspx?name={Server.UrlEncode("Li lei")}>Student?name={Server.UrlEncode("Li lei")}</a>";
            Label5.Text = $"网站根目录在磁盘上的位置：<span style=\"color:red;\">{Server.MapPath("~/")}</span>";
        }
    }
}