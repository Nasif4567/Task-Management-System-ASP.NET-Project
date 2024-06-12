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

public partial class admininbox : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    DataView dv;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        cmd = new SqlCommand();
        ds = new DataSet();
        con.ConnectionString = "Data Source=.;Initial Catalog=pubs;User ID=sa";
        con.Open();

        da = new SqlDataAdapter("select * from messages", con);
        ds = new DataSet();
        da.Fill(ds, "xyz");
        dv = new DataView(ds.Tables["xyz"]);
        dv.RowFilter = ("recieved_by='admin' ");
        GridView1.DataSource = dv;
        GridView1.DataBind();
    }
}
