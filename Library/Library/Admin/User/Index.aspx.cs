using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;


namespace Library.Admin
{
    public partial class Admin_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "SELECT [id],[name],[class],[last_login_time], case bookuser.status when '1' then '正常' else '挂失' end FROM [bookuser] WHERE admin!='1'";
            DataTable dt = new DataTable();
            ConnSql con = new ConnSql();
            dt=con.RunSqlReturnTable(sql);
            Table t = new Table();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TableRow r = new TableRow();
                TableCell id = new TableCell();
                TableCell name = new TableCell();
                TableCell class1 = new TableCell();
                TableCell time = new TableCell();
                TableCell a = new TableCell();
                TableCell b = new TableCell();
                id.Text = dt.Rows[i][0].ToString();
                name.Text = dt.Rows[i][1].ToString();
                class1.Text = dt.Rows[i][2].ToString();
                time.Text = dt.Rows[i][3].ToString();
                a.Text = dt.Rows[i][4].ToString();
                b.Text = "<a href=\"User_Manage.aspx?Xu=0&Bookid=0&id=" + dt.Rows[i][0].ToString() +"\" class=\"btn btn-primary btn - xs\">详情</a>";
                r.Cells.Add(id);
                r.Cells.Add(name);
                r.Cells.Add(class1);
                r.Cells.Add(time);
                r.Cells.Add(a);
                r.Cells.Add(b);
                t.Rows.Add(r);
            }
            PlaceHolder1.Controls.Add(t);
        }

        protected void Research_Click(object sender, EventArgs e)
        {
            string s = DropDownList1.SelectedValue;
            string a = TextBox1.Text.Trim();
            if (TextBox1.Text.Trim() == "" || TextBox1.Text.Trim() == null)
            {
                string sql = "SELECT [id],[name],[class],[last_login_time], case bookuser.status when '1' then '正常' else '挂失' end FROM [bookuser] where admin!='1' ";
                DataTable dt = new DataTable();
                ConnSql con = new ConnSql();
                dt = con.RunSqlReturnTable(sql);
                Table t = new Table();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TableRow r = new TableRow();
                    TableCell id = new TableCell();
                    TableCell name = new TableCell();
                    TableCell class1 = new TableCell();
                    TableCell time = new TableCell();
                    TableCell c = new TableCell();
                    TableCell b = new TableCell();
                    id.Text = dt.Rows[i][0].ToString();
                    name.Text = dt.Rows[i][1].ToString();
                    class1.Text = dt.Rows[i][2].ToString();
                    time.Text = dt.Rows[i][3].ToString();
                    c.Text = dt.Rows[i][4].ToString();
                    b.Text = "<a href=\"User_Manage.aspx?Xu=0&Bookid=0&id=" + dt.Rows[i][0].ToString() + "\" class=\"btn btn-primary btn - xs\">详情</a>";
                    r.Cells.Add(id);
                    r.Cells.Add(name);
                    r.Cells.Add(class1);
                    r.Cells.Add(time);
                    r.Cells.Add(c);
                    r.Cells.Add(b);
                    t.Rows.Add(r);
                }
                PlaceHolder1.Controls.Add(t);
                TextBox1.Text = null;

            }
            else if (s == "num")
            {
                string sql = "SELECT [id],[name],[class],[last_login_time], case bookuser.status when '1' then '正常' else '挂失' end FROM [bookuser] WHERE id='"+TextBox1.Text.Trim()+"'";
                DataTable dt = new DataTable();
                ConnSql con = new ConnSql();
                dt = con.RunSqlReturnTable(sql);
                Table t = new Table();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TableRow r = new TableRow();
                    TableCell id = new TableCell();
                    TableCell name = new TableCell();
                    TableCell class1 = new TableCell();
                    TableCell time = new TableCell();
                    TableCell c = new TableCell();
                    TableCell b = new TableCell();
                    id.Text = dt.Rows[i][0].ToString();
                    name.Text = dt.Rows[i][1].ToString();
                    class1.Text = dt.Rows[i][2].ToString();
                    time.Text = dt.Rows[i][3].ToString();
                    c.Text = dt.Rows[i][4].ToString();
                    b.Text = "<a href=\"User_Manage.aspx?Xu=0&Bookid=0&id=" + dt.Rows[i][0].ToString() + "\" class=\"btn btn-primary btn - xs\">详情</a>";
                    r.Cells.Add(id);
                    r.Cells.Add(name);
                    r.Cells.Add(class1);
                    r.Cells.Add(time);
                    r.Cells.Add(c);
                    r.Cells.Add(b);
                    t.Rows.Add(r);
                }
                PlaceHolder1.Controls.Add(t);
                TextBox1.Text = null;

            }

            else
            {
                string sql = "SELECT [id],[name],[class],[last_login_time], case bookuser.status when '1' then '正常' else '挂失' end FROM [bookuser] WHERE name='"+TextBox1.Text.Trim()+"'";
                DataTable dt = new DataTable();
                ConnSql con = new ConnSql();
                dt = con.RunSqlReturnTable(sql);
                Table t = new Table();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TableRow r = new TableRow();
                    TableCell id = new TableCell();
                    TableCell name = new TableCell();
                    TableCell class1 = new TableCell();
                    TableCell time = new TableCell();
                    TableCell c = new TableCell();
                    TableCell b = new TableCell();
                    id.Text = dt.Rows[i][0].ToString();
                    name.Text = dt.Rows[i][1].ToString();
                    class1.Text = dt.Rows[i][2].ToString();
                    time.Text = dt.Rows[i][3].ToString();
                    c.Text = dt.Rows[i][4].ToString();
                    b.Text = "<a href=\"User_Manage.aspx?Xu=0&Bookid=0&id=" + dt.Rows[i][0].ToString() + "\" class=\"btn btn-primary btn - xs\">详情</a>";
                    r.Cells.Add(id);
                    r.Cells.Add(name);
                    r.Cells.Add(class1);
                    r.Cells.Add(time);
                    r.Cells.Add(c);
                    r.Cells.Add(b);
                    t.Rows.Add(r);
                }
                PlaceHolder1.Controls.Add(t);
                TextBox1.Text = null;
            }
        }
    }
}