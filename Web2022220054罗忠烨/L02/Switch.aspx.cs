using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L02
{
    public partial class Switch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dtTody = DateTime.Today;
            switch (dtTody.DayOfWeek.ToString())
            {
                case "Monday":
                    Response.Write("今天是星期一！");
                    break;
                case "Tuesday":
                    Response.Write("今天是星期二！");
                    break;
                case "Wednesday":
                    Response.Write("今天是星期三！");
                    break;
                case "Thursday":
                    Response.Write("今天是星期四！");
                    break;
                case "Friday":
                    Response.Write("今天是星期五！");
                    break;
                default:
                    Response.Write("今天不上班，去耍去浪~~~~~~~~~~~~");
                    break;
            }
        }
    }
}