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
using System.Data.SqlClient;

public partial class admincompose : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        cmd = new SqlCommand();
        ds = new DataSet();
        con.ConnectionString = "data source =.; initial catalog=pubs;user id=sa";
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        TextBox2.Text = (string)Session["xyz"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into messages values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "' )";

        cmd.ExecuteNonQuery();
        Response.Write("Message Sent");
        clear();
    }
    void clear()
    {
       TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";   
    }

}


