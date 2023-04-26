using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L03
{
    public partial class For : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var textOutput = "";
            for (int i = 0; i < 5; i++)//控制行数
            {
                for (int j = 0; j < 20 - 2 * i; j++)
                {
                    textOutput+="&nbsp;";
                }
                for (int k = 0; k < 2 * i - 1; k++)
                {
                    textOutput += "*";
                }
                textOutput += "<br/>";
            }
            Label1.Text = textOutput;

        }
    }
}