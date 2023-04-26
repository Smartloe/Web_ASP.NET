using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L07
{
    public partial class 爱好CheckBoxList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //LabelMsg.Text = "你的爱好是：";
            //foreach (ListItem listItem in CheckBoxList1.Items)
            //{
            //    if (listItem.Selected)
            //    {
            //        LabelMsg.Text = LabelMsg.Text + listItem.Text + "&nbsp";
            //    }
            //}
            var builder = new StringBuilder("你的爱好是：");
            foreach (ListItem listItem in CheckBoxList1.Items)
            {
                if (listItem.Selected)
                {
                    builder.AppendLine(listItem.Text);
                }
            }
            LabelMsg.Text = builder.ToString();
        }
    }
}