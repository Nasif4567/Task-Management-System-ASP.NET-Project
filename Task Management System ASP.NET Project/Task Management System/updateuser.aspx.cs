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

public partial class updateuser : System.Web.UI.Page
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         cmd.CommandText = "update biodata set fname='"+TextBox1.Text+"',lname='"+TextBox2.Text+"',address='"+TextBox3.Text+"',phone='"+TextBox4.Text+"',desig='"+TextBox5.Text+"',position='"+TextBox6.Text+"' where fname='"+DropDownList1.SelectedItem.Text+"' ";
                    
        cmd.ExecuteNonQuery();
       
        
        Response.Write("<script language='javascript'>alert('Profile Updated !')</script>");
        clear();
    }
    void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
       

    }
    protected void  TextBox1_TextChanged(object sender, EventArgs e)
{

}
protected void  TextBox5_TextChanged(object sender, EventArgs e)
{

}
}

