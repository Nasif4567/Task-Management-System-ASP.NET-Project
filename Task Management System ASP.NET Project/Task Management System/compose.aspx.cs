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
using System.Web.Mail;
using System.Data.SqlClient;
//using System.Net.Mail.SmtpClient;

public partial class compose : System.Web.UI.Page
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
        con.ConnectionString = "Data Source=.;Initial Catalog=pubs;Persist Security Info=True;User ID=sa";
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        string str,str1;    
        str = Request.QueryString[0].ToString();
        cmd.CommandText = "select username from biodata where username ='" + Request.QueryString[0].ToString() + " '";
        str1=cmd.ExecuteScalar().ToString();
        TextBox1.Text = str1;
        TextBox2.Text = (string)Session["xyz"];

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {

        cmd.CommandText = "insert into messages values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        
        cmd.ExecuteNonQuery();

        Label4.Text = " Message Sent";
        
        
        //string to = TextBox1.Text;
        //string from = TextBox2.Text;
        //string subject = TextBox3.Text;
        //string body = TextBox4.Text;

        //SmtpMail.Send (from, to, subject, body) ;
        //Response.Write("sending successfull");
    }
}
