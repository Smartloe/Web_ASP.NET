using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Web2022220054罗忠烨._54罗忠烨
{
    public partial class 罗忠烨作业2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtName.Focus();
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            const string invalidName = "admin";
            if (string.Equals(txtName.Text, invalidName, StringComparison.InvariantCultureIgnoreCase))
            {
                lblValidate1.Text = "用户名已被注册！";
                lblValidate1.ForeColor = Color.Red;
            }
            else
            {
                lblValidate1.Text = "√";
                lblValidate1.ForeColor = Color.Green;
            }
        }

        protected void txtPassword1_TextChanged(object sender, EventArgs e)
        {
            if (txtPassword1.Text.Length < 6)
            {
                lblValidate2.Text = "密码长度过短！";
                lblValidate2.ForeColor = Color.Red;
            }
            else
            {
                lblValidate2.Text = "√";
                lblValidate2.ForeColor = Color.Green;
            }
        }

        protected void txtPassword2_TextChanged(object sender, EventArgs e)
        {
            if (txtPassword1.Text != txtPassword2.Text)
            {
                lblValidate3.Text = "密码不一致，请检查！";
                lblValidate2.ForeColor = Color.Red;
            }
            else
            {
                lblValidate3.Text = "√";
                lblValidate3.ForeColor = Color.Green;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (lblValidate1.Text == "√" && lblValidate2.Text == "√" && lblValidate3.Text == "√")
            {
                MessageBox.Show("注册成功");
            }
            else
            {
                MessageBox.Show("注册失败");
            }
        }
    }
}