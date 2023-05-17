using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.Admin
{
    public partial class Admin_Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["Name"].ToString();
            Label5.Text = Session["Time"].ToString();
            string sql = "SELECT COUNT(*) FROM book_info";
            ConnSql conn = new ConnSql();
            string a = conn.RunSqlReturnString(sql);
            Label3.Text = a.ToString().Trim();
            ConnSql con = new ConnSql();
            string sql1 = "SELECT COUNT(*) FROM bookuser WHERE admin!=1";
            string b = con.RunSqlReturnString(sql1);
            Label4.Text = b.ToString().Trim();
        }
    }
}