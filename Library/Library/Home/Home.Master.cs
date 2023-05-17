using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.Home
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                WebMessage.Show("请先登陆！", "../../Index.aspx");

            }
            Label1.Text = Session["Name"].ToString();
        }
        public void Logout(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session["Password"] = null;
            Session["Name"] = "";//session值均设为空        
            //跳转到登陆界面
            Response.Redirect("../../Index.aspx");
        }
    }
}