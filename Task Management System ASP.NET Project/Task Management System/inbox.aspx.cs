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

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    DataView dv;
  
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label2.Text = "hi  " + (string)Session["xyz"] ;
        //TextBox1.Text = (string)Session["xyz"];
        //Session["123"] = TextBox1.Text;
        //Session["123"] = (string)Session["xyz"];
        con = new SqlConnection();
        cmd = new SqlCommand();
        ds = new DataSet();        
        con.ConnectionString = "data source =.; initial catalog=pubs;user id=sa";
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;

        //da = new SqlDataAdapter("select * from biodata", con);
        //ds = new DataSet();
        //da.Fill(ds, "xyz");
        //dv = new DataView(ds.Tables["xyz"]);
        //dv.RowFilter = ("username='" + (string)Session["xyz"] + "' ");
        //GridView1.DataSource = dv;
        //GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from projectassign", con);
        ds = new DataSet();
        da.Fill(ds, "xyz");
        dv = new DataView(ds.Tables["xyz"]);
        dv.RowFilter = ("name='" + (string)Session["xyz"] + "'");
        GridView1.DataSource = dv;
        GridView1.DataBind();
    }
}
