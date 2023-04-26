using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L07
{
    public partial class Table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var 学号 = new[] { "001", "002", "003" };
            var 姓名 = new[] { "史珍香", "蔡旭", "小黑" };
            for (var i = 0; i < 学号.Length; i++)
            {
                var row = new TableRow();
                var cell学号 = new TableCell() { Text = 学号[i] };
                var cell姓名 = new TableCell() { Text = 姓名[i] };
                var cell成绩 = new TableCell();
                var textbox = new TextBox();
                cell成绩.Controls.Add(textbox);
                row.Cells.AddRange(new[] { cell学号, cell姓名, cell成绩 });
                Table1.Rows.Add(row);
            }
        }
    }
}