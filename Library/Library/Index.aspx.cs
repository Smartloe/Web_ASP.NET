using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btn_yzm.Text = Yzm.CreateYzm(4);
                Username.Focus();
            }
        }
        protected void Button_Login(object sender, EventArgs e)
        {
            if (Username.Text == "")
                WebMessage.Show("请输入用户名");
            else if (Password.Text == "")
                WebMessage.Show("请输入密码");
            else if (yzm.Text == "")
                WebMessage.Show("请输入验证码");
            else
            {

                string sqltext = "select * from bookuser where id='" + Username.Text + "'";
                DataTable table = new DataTable();
                ConnSql cn = new ConnSql();
                table = cn.RunSqlReturnTable(sqltext);
                if (table.Rows.Count <= 0)
                    WebMessage.Show("用户名错误！");
                else if (table.Rows[0][1].ToString().Trim() != Password.Text)
                    WebMessage.Show("密码错误！");
                else if (table.Rows[0][4].ToString().Trim() == "0")
                {
                    WebMessage.Show("账户处于挂失状态，无法登陆！");
                }
                else if (yzm.Text != btn_yzm.Text)
                {
                    WebMessage.Show("验证码输入错误");
                }
                else
                {
                    ConnSql con = new ConnSql();
                    string sql = "update bookuser SET last_login_time='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.ffff") + "' WHERE id='" + table.Rows[0][0].ToString() + "'";
                    con.RunSql(sql);
                    //保存登录的用户的用户名和密码到Session对象
                    Session["Admin"] = table.Rows[0][5].ToString();
                    if (Session["Admin"].ToString() == "1")
                    {
                        Session["Username"] = table.Rows[0][0].ToString();
                        Session["Password"] = table.Rows[0][1].ToString();
                        Session["Name"] = table.Rows[0][2].ToString();
                        Session["Time"] = table.Rows[0][6].ToString();
                        Session["id"] = Username.Text;
                        WebMessage.Show("登录成功，管理员:" + Session["Name"].ToString().Trim() + "欢迎您！", "/Admin/Index/Index.aspx");
                    }
                    else if (Session["Admin"].ToString() == "2")
                    {
                        Session["id"] = Username.Text;
                        Session["Username"] = table.Rows[0][0].ToString();
                        Session["Password"] = table.Rows[0][1].ToString();
                        Session["Name"] = table.Rows[0][2].ToString();
                        Session["Time"] = table.Rows[0][6].ToString();
                        WebMessage.Show("登录成功，" + Session["Name"].ToString().Trim() + "老师，欢迎您！", "/Home/Index/Index.aspx");
                    }
                    else if (Session["Admin"].ToString() == "0")
                    {
                        Session["Username"] = table.Rows[0][0].ToString();
                        Session["Password"] = table.Rows[0][1].ToString();
                        Session["Name"] = table.Rows[0][2].ToString();
                        Session["Time"] = table.Rows[0][6].ToString();
                        Session["id"] = Username.Text;
                        WebMessage.Show("登录成功，" + Session["Name"].ToString().Trim() + "同学，欢迎您！", "/Home/Index/Index.aspx");
                    }
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            btn_yzm.Text = Yzm.CreateYzm(4);
        }
    }
}