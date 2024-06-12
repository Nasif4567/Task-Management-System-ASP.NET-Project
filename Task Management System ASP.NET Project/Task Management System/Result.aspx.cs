using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = (string)Session["task_selected"];
        TextBox2.Text = (string)Session["project_leader"];
        TextBox3.Text = (string)Session["manager"];
        TextBox4.Text = (string)Session["programmer"];

    }
}
