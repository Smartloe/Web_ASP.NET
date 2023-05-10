using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L09
{
    public partial class SessionLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "admin" && txtPassword.Text == "123")
            {
                Session["name"] = "admin";
            }
            if (txtName.Text != "admin")
            {
                Label1.Text = "用户名不存在！";
            }
            if (txtPassword.Text != "123")
            {
                Label2.Text = "密码输入错误！";
            }
        }
    }
}