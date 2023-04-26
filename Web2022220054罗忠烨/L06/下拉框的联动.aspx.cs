using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L06
{
    public partial class 下拉框的联动 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var month= Convert.ToInt32(DropDownList1.SelectedValue);
            var day =DateTime.DaysInMonth(DateTime.Today.Year, month);
            DropDownList2.Items.Clear();
            for(var i = 1; i < day; i++)
            {
                DropDownList2.Items.Add(new ListItem { Value=i.ToString(),Text=$"{i:D2}日"});
            }

        }
    }
}