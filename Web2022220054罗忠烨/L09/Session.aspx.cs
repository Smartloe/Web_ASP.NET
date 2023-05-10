using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L09
{
    public partial class Session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                lblMsg.Text = Session["Name"] + ",欢迎你！";
            }
            else
            {
                Response.Redirect("ServerLogin");
            }
        }
    }
}