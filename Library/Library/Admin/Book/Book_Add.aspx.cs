using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.Admin.Book
{
    public partial class Book_Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (name.Text == "")
                WebMessage.Show("请输入书名");
            else if (author.Text == "")
                WebMessage.Show("请输入作者");
            else if (press.Text == "")
                WebMessage.Show("请输入出版社");
            else if (pressTime.Text == "")
                WebMessage.Show("请输入出版时间");
            else if (price.Text == "")
                WebMessage.Show("请输入价格");
            else if (ISBN.Text == "")
                WebMessage.Show("请输入ISBN");
            else if (desc.Text == "")
                WebMessage.Show("请输入简介");
            else
            {
                string sql = "INSERT INTO book_info (name,author,press,press_time,price,ISBN,descs) VALUES ('" + name.Text.Trim() + "','" + author.Text.Trim() + "','" + press.Text.Trim() + "','" + pressTime.Text.Trim() + "','" + price.Text.Trim() + "','" + ISBN.Text.Trim() + "','" + desc.Text.Trim() + "')";
                ConnSql conn = new ConnSql();
                int s = conn.RunSql(sql);
                if (s > 0)
                {
                    WebMessage.Show("添加成功","Index.aspx");
                }
                else
                {
                    WebMessage.Show("添加失败");
                }
            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            name.Text = null;
            author.Text = null;
            press.Text = null;
            pressTime = null;
            price.Text = null;
            ISBN.Text = null;
            desc.Text = null;
        }
    }
}