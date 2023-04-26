using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L07
{
    public partial class Panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void 确认用户名Button_Click(object sender, EventArgs e)
        {
            //用户名panel设为不可见
            Panel1.Visible = false;
            //用户信息panel设为可见
            Panel2.Visible = true;
        }

        protected void 确认用户信息Button_Click(object sender, EventArgs e)
        {
            //用户信息panel设为不可见
            Panel2.Visible = false;
            //确认信息panel设为可见
            Panel3.Visible = true;
            userName1.Text = userName.Text;
            name1.Text = name.Text;
            phoneNum1.Text = phoneNum.Text;
        }
    }
}