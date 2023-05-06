using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L08
{
    public partial class Redirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex < 0) { return; }
            if (RadioButtonList1.SelectedIndex == 0)
            {
                Response.Redirect("Teacher.aspx?name=" + Server.UrlEncode(txtName.Text));
                return;
            }
            else
            {
                Response.Redirect("Student.aspx?name=" + Server.UrlEncode(txtName.Text));
            }
        }
    }
}