using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L05
{
    public partial class WebFormLifeCycle : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            Response.Write($"{DateTime.Now:HH:mm:ss.ffff}{nameof(Page_PreInit)}\n<br />");
            System.Threading.Tasks.Task.Delay(1000).Wait();
        } 
        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Write($"{DateTime.Now:HH:mm:ss.ffff}{nameof(Page_Init)}\n<br />");
            System.Threading.Tasks.Task.Delay(1000).Wait();
        }
        protected void Page_InitComplete(object sender, EventArgs e)
        {
            Response.Write($"{DateTime.Now:HH:mm:ss.ffff}{nameof(Page_InitComplete)}\n<br />");
            System.Threading.Tasks.Task.Delay(1000).Wait();
        }
        protected void Page_PreLoad(object sender, EventArgs e)
        {
            Response.Write($"{DateTime.Now:HH:mm:ss.ffff}{nameof(Page_PreLoad)}\n<br />");
            System.Threading.Tasks.Task.Delay(1000).Wait();
        } 
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write($"{DateTime.Now:HH:mm:ss.ffff}{nameof(Page_Load)}\n<br />");
            System.Threading.Tasks.Task.Delay(1000).Wait();
        } 
        
         protected void Page_LoadComplete(object sender, EventArgs e)
        {
            Response.Write($"{DateTime.Now:HH:mm:ss.ffff}{nameof(Page_LoadComplete)}\n<br />");
            System.Threading.Tasks.Task.Delay(1000).Wait();
        } 
        protected void Page_PreRender(object sender, EventArgs e)
        {
            Response.Write($"{DateTime.Now:HH:mm:ss.ffff}{nameof(Page_PreRender)}\n<br />");
            System.Threading.Tasks.Task.Delay(1000).Wait();
        } 
        protected void Page_PreRenderComplete(object sender, EventArgs e)
        {
            Response.Write($"{DateTime.Now:HH:mm:ss.ffff}{nameof(Page_PreRenderComplete)}\n<br />");
            System.Threading.Tasks.Task.Delay(1000).Wait();
        }
        protected void Page_SaveStateComplete(object sender, EventArgs e)
        {
            Response.Write($"{DateTime.Now:HH:mm:ss.ffff}{nameof(Page_SaveStateComplete)}\n<br />");
            System.Threading.Tasks.Task.Delay(1000).Wait();
        }


    }
}