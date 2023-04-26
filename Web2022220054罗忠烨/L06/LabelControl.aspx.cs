using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L06
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Visible = IsPostBack;
            Label4.Text = TextBox1.Text;
            TextBox1.Focus();
        }

        protected void Label1_DataBinding(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label5.Text = $"sender的类型是{sender.GetType().Name}";
        }
    }
}