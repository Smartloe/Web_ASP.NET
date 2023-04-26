using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Web2022220054罗忠烨.L03
{
    public partial class Foreach : System.Web.UI.Page
    {
        private string[] strNames = new[] { "张三", "李四", "王五", "李磊", "叶问" };
     /*   protected void Page_Load(object sender, EventArgs e)
        {

            Array.Sort(strNames);
            foreach (string strName in strNames)
            {
                Response.Write($"姓名：{strName}<br/>");
            }

        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
            var builder = new StringBuilder("<br/>");
            Array.Sort(strNames);
            foreach (string strName in strNames)
            {
                builder.Append($"姓名：{strName}");
                builder.Append("<br/>");
            }
            Label1.Text= builder.ToString();
        }
    }
}