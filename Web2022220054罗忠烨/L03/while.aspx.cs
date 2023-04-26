using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L03
{
    public partial class _while : System.Web.UI.Page
    {
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            var iSum = 0;
            int iInput = int.Parse(txtInput.Text);
            int i = 1;
            while (i <= iInput)
            {
                iSum += i;
                i += 2;
            }
            lblOutput.Text = $"和为：{iSum}";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}