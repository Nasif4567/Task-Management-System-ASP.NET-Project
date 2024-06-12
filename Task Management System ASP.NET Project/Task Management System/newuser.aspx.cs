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



public partial class newuser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    int i;
         
    
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
        cmd.CommandText = "insert into biodata values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + txtaddress.Text + "','" + txtphone.Text + "','" + txtzipcode.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','" + txtcode.Text + "','" + txtdesign.Text + "','" + DropDownList1.SelectedItem.Text + "')";


        cmd.ExecuteNonQuery();
        Response.Write("<script language='javascript'>alert('New User Registered !')</script>");
        //Response.Write("insert successfull");
        clear();
    
    }
    void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        txtaddress.Text = "";
        txtphone.Text = "";
        txtzipcode.Text = "";
        txtusername.Text = "";
        txtpass.Text = "";
        txtpassword.Text = "";
        txtcode.Text = "";
        txtdesign.Text = "";
    

    }
    
}
