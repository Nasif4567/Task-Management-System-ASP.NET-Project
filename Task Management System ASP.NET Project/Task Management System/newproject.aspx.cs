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
public partial class newproject : System.Web.UI.Page
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
        con.ConnectionString = "Data Source=.;Initial Catalog=pubs;Persist Security Info=True;User ID=sa";
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into projects values('" + TextBox1.Text + "')";  
        cmd.ExecuteNonQuery();        
        Response.Write("<script language='javascript'>alert('Project Inserted !')</script>");                
        ListBox1.Items.Add(TextBox1.Text);
        clear();
    }
    void clear()
    {
        TextBox1.Text = "";             

    }  
    
    }

