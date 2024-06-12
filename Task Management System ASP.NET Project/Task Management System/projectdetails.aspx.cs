using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class projectdetails : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    DataView dv;
    
    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string str;
        con = new SqlConnection();
        cmd = new SqlCommand();
        ds = new DataSet();
        con.ConnectionString = "Data Source=.;Initial Catalog=pubs;User ID=sa";
        con.Open();

        str = Request.QueryString[0].ToString();
        da = new SqlDataAdapter("select * from projectassign where project='" + Request.QueryString[0].ToString() + "'", con);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

     
        
    }
}
