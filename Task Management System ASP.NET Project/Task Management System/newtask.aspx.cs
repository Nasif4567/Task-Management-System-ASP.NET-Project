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

public partial class newtask : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    //int i;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection();
        cmd = new SqlCommand();
        ds = new DataSet();
        con.ConnectionString = "data source =.; initial catalog=pubs;user id=sa";
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into tasklists values('" + txtTaskName.Text + "','" + txtCDate.Text + "','" + txtMDate.Text + "','" + txtSubject.Text + "','" + txtBody.Text + "','" + txtStatus.Text + "')";
        
        cmd.ExecuteNonQuery();
       
        Label.Text = "Insert succesfull";
        Response.Write("<script language='javascript'>alert('Task Inserted !')</script>");
        clear();
    }
    void clear()
    {
        txtTaskName.Text = "";
        txtCDate.Text = "";
        txtMDate.Text = "";
        txtSubject.Text = "";
        txtBody.Text = "";
        txtStatus.Text = "";
       

    }
  
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtCDate.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtMDate.Text = Calendar2.SelectedDate.ToShortDateString();
    }
}
