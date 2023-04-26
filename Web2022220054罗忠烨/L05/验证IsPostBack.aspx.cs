using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L05
{
    public partial class 验证IsPostBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Response.Write("是页面回传");
            }
            else
            {
                Response.Write("不是页面回传");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("按钮被单击了！");
        }
    }
}