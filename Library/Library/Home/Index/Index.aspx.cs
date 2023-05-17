using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.Home.Index
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["Name"].ToString();
            Label5.Text = Session["Time"].ToString();
            string sql = "SELECT count(*) from borrow_list where user_id=" + Session["id"].ToString() + " and back_date < '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.ffff")+"'";
            ConnSql conn = new ConnSql();
            string a = conn.RunSqlReturnString(sql);
            ConnSql con = new ConnSql();
            string sql1 = "SELECT COUNT(*) as s from borrow_list where user_id=" + Session["id"].ToString();
            string b = con.RunSqlReturnString(sql1);
            Label4.Text = a.ToString().Trim();
            Label3.Text = b.ToString().Trim();
        }
    }
}