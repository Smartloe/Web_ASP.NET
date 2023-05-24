using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L10
{
    public partial class SqlDSInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void 保存Button_Click(object sender, EventArgs e)
        {
            if (班号.Text.Length > 0 && 年级.Text.Length > 0)
            {
                班级SqlDataSource.Insert();
                班级GridView.DataBind();
            }
        }
    }
}