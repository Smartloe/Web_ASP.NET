using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L08
{
    public partial class Request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MsgLabel.Text = $"服务器地址：{Request.ServerVariables["LOACAL_ADDR"]}<br/>客户端地址：{Request.ServerVariables["REMOTE_ADDR"]}<br/>http_User_agent:{Request.ServerVariables["http_User_agent"]}<br/>浏览器类型：{Request.Browser["Browser"]}<br/>浏览器版本：{Request.Browser["Version"]}<br/>是否支持cookie：{Request.Browser["Cookies"]}<br/>是否支持JavaScript：{Request.Browser["JavaScript"]}";
            var msg = "";
            foreach (var key in Request.ServerVariables.AllKeys)
            {
                msg = $"<br /> {msg}{key}={Request.ServerVariables[key]}";
            }
            var label = new Label() { Text = msg };
            Controls.Add(label);
        }
    }
}