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

public partial class Delete_User : System.Web.UI.Page
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
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        if (!IsPostBack == true)
        {
            da = new SqlDataAdapter("select distinct(username) from biodata", con);
            da.Fill(ds,"use");
            int i;
            for (i = 0; i <= ds.Tables["use"].Rows.Count - 1; i++)
            {
                DropDownList1.Items.Add(ds.Tables["use"].Rows[i]["username"].ToString());

            }
        }
       
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        cmd.CommandText = "delete from biodata where username='" + DropDownList1.SelectedItem.Text + "' ";

        cmd.ExecuteNonQuery();
        DropDownList1.Items.Clear();
        //ds.Tables["use"].Rows.Clear();
        da = new SqlDataAdapter("select distinct(username) from biodata", con);
        da.Fill(ds,"kk");
        int j;
        for (j = 0; j <= ds.Tables["kk"].Rows.Count - 1; j++)
        {
            DropDownList1.Items.Add(ds.Tables["kk"].Rows[j]["username"].ToString());

        }

       
        Response.Write("deleted");
    }
}
