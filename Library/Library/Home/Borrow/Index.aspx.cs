using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.Home.Borrow
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userId.Text = Session["id"].ToString().Trim();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (borrow.Checked)
            {
                ConnSql con = new ConnSql();
                string a = "select times from bookuser where id = '"+ Session["id"].ToString().Trim() + "'";
                string b=con.RunSqlReturnString(a);
                string c = "select admin from bookuser where id = '"+ Session["id"].ToString().Trim() + "'";
                string d = con.RunSqlReturnString(c);
                if (b=="0"&&d=="0")
                {
                    WebMessage.Show("最多借阅10本书");
                }else if (b=="0"&&d=="2")
                {
                    WebMessage.Show("最多借阅20本书");
                }
                else
                {
                    string sql = "INSERT INTO borrow_list ([book_id], [user_id], [borrow_date], [back_date]) VALUES ('" + bookId.Text.Trim() + "', '" + Session["id"].ToString().Trim() + "', '" + DateTime.Now.ToString() + "', '" + DateTime.Now.AddMonths(2).ToString() + "');";
                    string sql1 = "UPDATE book_info SET times1 = times1+1 where id='" + bookId.Text.Trim() + "'";
                    string sql2 = "UPDATE bookuser SET times1 = times1+1,times = times-1 where id='" + Session["id"].ToString().Trim() + "'";
                    int x = con.RunSql(sql);
                    con.RunSql(sql1);
                    con.RunSql(sql2);
                    if (x == 1)
                    {
                        WebMessage.Show("借阅成功", "Index.aspx");
                    }
                    else
                    {
                        WebMessage.Show("借阅失败");
                    }
                }
                
            }
            else
            {
                ConnSql con = new ConnSql();
                string sql = "delete from borrow_list where book_id=" + bookId.Text.Trim();
                string sql1 = "update bookuser set times=times+1 where id='" + Session["id"].ToString().Trim()+"'";
                con.RunSql(sql1);
                int x = con.RunSql(sql);
                if (x == 1)
                {
                    WebMessage.Show("还书成功", "Index.aspx");
                }
                else
                {
                    WebMessage.Show("还书失败");
                }
            }
        }
    }
}