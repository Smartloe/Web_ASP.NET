using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///WebMessage 的摘要说明
/// </summary>
public class WebMessage
{
	public WebMessage()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 网页消息对话框
    /// </summary>
    /// <param name="Message">要显示的消息文本</param>
    public static void Show(String messagetext)
    {
        HttpContext.Current.Response.Write("<script language='javascript' type='text/javascript'>alert('"
            + messagetext + "')</script>");
        HttpContext.Current.Response.Write("<script>history.go(-1)</script>");
        HttpContext.Current.Response.End();
    }
    /// <summary>
    /// 网页消息对话框
    /// </summary>
    /// <param name="Message">要显示的消息文本</param>
    /// <param name="Src">点击确定后跳转的页面</param>
    public static void Show(string Message, string Src)
    {
        HttpContext.Current.Response.Write("<script language='javascript' type='text/javascript'>alert('" + Message + "');location.href='" + Src + "'</script>");
        HttpContext.Current.Response.End();
    }
}