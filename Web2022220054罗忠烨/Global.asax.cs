using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace Web2022220054罗忠烨
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptResourceDefinition scriptResDef = new ScriptResourceDefinition();
            //设置jQuery提供的JavaScript 库路，其中版本号由安装的jQuery版本号确定
            scriptResDef.Path = "~/Scripts/jquery-3.6.4.min.js";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", scriptResDef);
        }
    }
}