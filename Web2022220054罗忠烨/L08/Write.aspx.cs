using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L08
{
    public partial class HttpResponse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 10; i <= 25; i += 4)
            {
                Response.Write("<p style=\"font-size:" + i.ToString() + "px\"> I like ASP.NET!</p>");
            }
        }
    }
}