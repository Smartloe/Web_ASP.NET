using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.Home.Book
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void research_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() == null || TextBox1.Text.Trim() == "")
            {
                string sql = "SELECT distinct id,name,author, (SELECT count(*) from borrow_list where book_id=id) as status  from book_info";
                DataTable dt = new DataTable();
                ConnSql con = new ConnSql();
                dt = con.RunSqlReturnTable(sql);
                GridView1.DataSourceID = null;
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else if (DropDownList1.SelectedValue.Trim() == "keyword")//书名查询
            {
                string sql = "SELECT distinct id,name,author, (SELECT count(*) from borrow_list where book_id=id) as status  from book_info where name='" + TextBox1.Text.Trim() + "'";
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
    }
}