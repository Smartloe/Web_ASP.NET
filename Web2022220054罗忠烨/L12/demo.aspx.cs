using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2022220054罗忠烨.L12
{
    public partial class demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                var deleteButton=(LinkButton)e.Row.Cells[0].FindControl("LinkButton2");
                deleteButton.OnClientClick = $"return confirmDelete('{((DataRowView)e.Row.DataItem).Row["班号"]}')";
            }
        }
    }
}