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

public partial class assign_task : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // Session["123"] = ListBox1.SelectedItem.Text;
        Response.Redirect("selection.aspx");
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //TextBox1.Text = ListBox1.SelectedItem.Text.ToString();
        //Session["123"] = ListBox1.SelectedItem.Text;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = ListBox1.SelectedItem.Text.ToString();
        Session["123"] = ListBox1.SelectedItem.Text.ToString();

    }
}
