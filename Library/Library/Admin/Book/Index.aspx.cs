using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.Admin
{
    public partial class Admin_Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void research_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim()==null||TextBox1.Text.Trim()=="")
            {
                string sql = "SELECT distinct id,name,author, (SELECT count(*) from borrow_list where book_id=id) as status  from book_info";
                DataTable dt = new DataTable();
                ConnSql con = new ConnSql();
                dt = con.RunSqlReturnTable(sql);
                GridView1.DataSourceID = null;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else if (DropDownList1.SelectedValue.Trim()== "keyword")//书名查询
            {
                string sql = "SELECT distinct id,name,author, (SELECT count(*) from borrow_list where book_id=id) as status  from book_info where name='" + TextBox1.Text.Trim()+"'";
                DataTable dt = new DataTable();
                ConnSql con = new ConnSql();
                dt = con.RunSqlReturnTable(sql);
                GridView1.DataSourceID = null;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else//书号查询
            {
                string sql = "SELECT distinct id,name,author, (SELECT count(*) from borrow_list where book_id=id) as status  from book_info where id='" + TextBox1.Text.Trim() + "'";
                DataTable dt = new DataTable();
                ConnSql con = new ConnSql();
                dt = con.RunSqlReturnTable(sql);
                GridView1.DataSourceID = null;
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ConnSql con = new ConnSql();
            string sql = "delete from book_info where id='" + (sender as Button).CommandArgument.ToString() + "'";
            string sql1 = "delete from borrow_list where book_id='" + (sender as Button).CommandArgument.ToString() + "'";
            int x = con.RunSql(sql);
            con.RunSql(sql1);
            if (x == 1)
            {
                WebMessage.Show("删除成功", "Index.aspx");
            }
            else
            {
                WebMessage.Show("删除失败");
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Book_edit.aspx?id="+(sender as Button).CommandArgument.ToString());
        }
    }
}