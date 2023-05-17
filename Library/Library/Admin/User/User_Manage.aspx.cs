using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.Admin.User
{
    public partial class User_Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                string id = Request.QueryString["id"].ToString().Trim();
                ConnSql con = new ConnSql();
                string sqlinfo = "select * from bookuser where id='" + id + "'";
                DataTable info = new DataTable();
                info = con.RunSqlReturnTable(sqlinfo);
                Id.Text = Request.QueryString["id"].ToString().Trim();
                Name.Text = info.Rows[0]["name"].ToString();
                Class1.Text = info.Rows[0]["class"].ToString();
                if (info.Rows[0]["status"].ToString() == "1")
                {
                    Label2.Text = "正常";
                    Label4.Text = "挂失";
                    Label5.Text = "挂失";
                }
                else
                {
                    Label2.Text = "挂失";
                    Label4.Text = "启用";
                    Label5.Text = "启用";
                }
                TextBox1.Text = info.Rows[0]["name"].ToString().Trim();
                TextBox2.Text = info.Rows[0]["class"].ToString().Trim();
                Label1.Text = Request.QueryString["id"].ToString().Trim();
                Label3.Text = Request.QueryString["id"].ToString().Trim();
                string sql = "SELECT borrow_list.book_id,book_info.name,borrow_list.borrow_date,borrow_list.back_date FROM borrow_list,book_info WHERE  book_info.id=borrow_list.book_id and borrow_list.user_id='" + id + "'";
                DataTable dt = new DataTable();
                dt = con.RunSqlReturnTable(sql);
                Table t = new Table();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TableRow r = new TableRow();
                    TableCell bookid = new TableCell();
                    TableCell name = new TableCell();
                    TableCell borrow_date = new TableCell();
                    TableCell back_date = new TableCell();
                    TableCell a = new TableCell();
                    bookid.Text = dt.Rows[i][0].ToString();
                    name.Text = dt.Rows[i][1].ToString();
                    borrow_date.Text = dt.Rows[i][2].ToString();
                    back_date.Text = dt.Rows[i][3].ToString();
                    a.Text = "<a href=\"User_Manage.aspx?Xu=1&id="+ id + "&bookid=" + dt.Rows[i][0].ToString() + "\" class=\"btn btn-info btn - xs prolong \">续借</a>&nbsp<a  href=\"User_Manage.aspx?Xu=2&id=" + id + "&bookid=" + dt.Rows[i][0].ToString() + "\" class=\"btn btn-success btn - xs return \">还书</a>";
                    r.Cells.Add(bookid);
                    r.Cells.Add(name);
                    r.Cells.Add(borrow_date);
                    r.Cells.Add(back_date);
                    r.Cells.Add(a);
                    t.Rows.Add(r);
                }
                PlaceHolder1.Controls.Add(t);
            }
            if (Request.QueryString["Xu"].ToString().Trim() != null)
            {
                string Xu = Request.QueryString["Xu"].ToString().Trim();
                string Bookid = Request.QueryString["bookid"].ToString().Trim();
                string id = Request.QueryString["id"].ToString().Trim();
                if (Xu == "1" && Bookid != "0")
                {
                    ConnSql con = new ConnSql();
                    string sql = "UPDATE borrow_list set back_date='" + DateTime.Now.AddMonths(1).ToString().Trim() + "' where book_id=" + Bookid;
                    int x = con.RunSql(sql);
                    if (x == 1)
                    {
                        WebMessage.Show("续借成功", "User_Manage.aspx?Xu=0&id="+ id + "&Bookid=0");
                    }
                    else
                    {
                        WebMessage.Show("续借失败", "User_Manage.aspx?Xu=0&id=" + id + "&Bookid=0");
                    }
                }
                if (Xu == "2" && Bookid != "0")
                {
                    ConnSql con = new ConnSql();
                    string sql = "delete from borrow_list where book_id=" + Bookid;
                    string sql1 = "update bookuser set times = times+1 where id='" + id + "'";
                    con.RunSql(sql1);
                    int x = con.RunSql(sql);
                    if (x == 1)
                    {
                        WebMessage.Show("还书成功", "User_Manage.aspx?Xu=0&id=" + id + "&Bookid=0");
                    }
                    else
                    {
                        WebMessage.Show("还书失败", "User_Manage.aspx?Xu=0&id=" + id + "&Bookid=0");
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ConnSql con = new ConnSql();
            string sql = "update bookuser set name='" + TextBox1.Text.Trim() + "',class='" + TextBox2.Text.Trim() + "' where id='" + Request.QueryString["id"].ToString().Trim()+"'";
            int x = con.RunSql(sql);
            if (x == 1)
            {
                WebMessage.Show("修改成功");
            }
            else
            {
                WebMessage.Show("修改失败");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label2.Text == "正常")
            {
                ConnSql con = new ConnSql();
                string sql = "update bookuser set status='0' where id='" + Request.QueryString["id"].ToString().Trim() + "'";
                int x = con.RunSql(sql);
                if (x == 1)
                {
                    WebMessage.Show("挂失成功");
                }
                else
                {
                    WebMessage.Show("挂失失败");
                }
            }
            else {
                ConnSql con = new ConnSql();
                string sql = "update bookuser set status='1' where id='" + Request.QueryString["id"].ToString().Trim() + "'";
                int x = con.RunSql(sql);
                if (x == 1)
                {
                    WebMessage.Show("启用成功");
                }
                else
                {
                    WebMessage.Show("启用失败");
                }
            }
        }

        protected void pwdButton_Click(object sender, EventArgs e)
        {
            ConnSql con = new ConnSql();
            string sql = "update bookuser set pwd='" + newPwd.Text.Trim() + "' where id='" + Request.QueryString["id"].ToString().Trim() + "'";
            int x = con.RunSql(sql);
            if (x == 1)
            {
                WebMessage.Show("修改成功");
            }
            else
            {
                WebMessage.Show("修改失败");
            }
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            ConnSql con = new ConnSql();
            string sql = "delete from bookuser where id='" + Request.QueryString["id"].ToString().Trim() + "'";
            string sql1 = "delete from borrow_list where user_id='" + Request.QueryString["id"].ToString().Trim() + "'";
            int x = con.RunSql(sql);
            con.RunSql(sql1);
            if (x == 1)
            {
                WebMessage.Show("删除成功","Index.aspx");
            }
            else
            {
                WebMessage.Show("删除失败");
            }
        }
    }
}