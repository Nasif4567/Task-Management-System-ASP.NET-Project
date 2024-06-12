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


public partial class login : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    int i;
            
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        //cmd = new SqlCommand();
        ds = new DataSet();
        con.ConnectionString = "Data Source=.;Initial Catalog=pubs;User ID=sa" ;
        con.Open();


     }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i; 
        da = new SqlDataAdapter("Select * from biodata", con);
        ds = new DataSet();
        da.Fill(ds, "biodata");
        for (i = 0; i <= ds.Tables["biodata"].Rows.Count - 1;i++ )
        {
            if (TextBox1.Text == ds.Tables["biodata"].Rows[0]["username"].ToString() && TextBox2.Text == ds.Tables["biodata"].Rows[0]["password"].ToString())
            {
                Session["xyz"] = TextBox1.Text;
                Response.Redirect("admin home.aspx");
            }
            else if (TextBox1.Text == ds.Tables["biodata"].Rows[i]["username"].ToString() && TextBox2.Text == ds.Tables["biodata"].Rows[i]["password"].ToString())
            {
                Session["xyz"] = TextBox1.Text;
                Response.Redirect("inbox.aspx");
                break;
            }
            else
            {
                Label3.Text = "Please enter correct username and password";

            } 
        }


    }
}
