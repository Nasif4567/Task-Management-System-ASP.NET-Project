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

public partial class new_message : System.Web.UI.Page
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
        con.ConnectionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;password=sa";
        con.Open();

        da = new SqlDataAdapter("select * from messages where sentto = '"+ (string)Session["xyz"] + "' ", con);
        ds = new DataSet();
        da.Fill(ds);               
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}
