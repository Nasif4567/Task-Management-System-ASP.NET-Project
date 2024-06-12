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

public partial class selection : System.Web.UI.Page
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
        TextBox1.Text = (string)Session["123"];
        txtDate.Text = DateTime.Now.ToString();
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        i = ListBox1.Items.Count - 1;
        if (ListBox1.Items.Count == 0)
        {
            Response.Write("<script language='javascript'>alert('No Record')</script>");
        }
        for (i = 0; i <= ListBox1.Items.Count - 1; i++)
        {
            if (ListBox1.SelectedIndex == i)
            {
                ListBox2.Items.Add(ListBox1.SelectedItem.Text);
                ListBox1.Items.RemoveAt(i);
                break;

            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        i = ListBox2.Items.Count - 1;
        if (ListBox2.Items.Count == 0)
        {
            Response.Write("<script language='javascript'>alert('No Record')</script>");
        }
        for (i = 0; i <= ListBox2.Items.Count - 1; i++)
        {
            if (ListBox2.SelectedIndex == i)
            {
                ListBox1.Items.Add(ListBox2.SelectedItem.Text);

                ListBox2.Items.RemoveAt(i);
                break;

            }

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        i = ListBox3.Items.Count - 1;
        if (ListBox3.Items.Count == 0)
        {
            Response.Write("<script language='javascript'>alert('No Record')</script>");
        }
        for (i = 0; i <= ListBox3.Items.Count - 1; i++)
        {
            if (ListBox3.SelectedIndex == i)
            {
                ListBox4.Items.Add(ListBox3.SelectedItem.Text);
                ListBox3.Items.RemoveAt(i);
                break;

            }

        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        i = ListBox4.Items.Count - 1;
        if (ListBox4.Items.Count == 0)
        {
            Response.Write("<script language='javascript'>alert('No Record')</script>");
        }
        for (i = 0; i <= ListBox4.Items.Count - 1; i++)
        {
            if (ListBox4.SelectedIndex == i)
            {
                ListBox3.Items.Add(ListBox4.SelectedItem.Text);
                ListBox4.Items.RemoveAt(i);
                break;

            }

        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        i = ListBox5.Items.Count - 1;
        if (ListBox5.Items.Count == 0)
        {
            Response.Write("<script language='javascript'>alert('No Record')</script>");
        }
        for (i = 0; i <= ListBox5.Items.Count - 1; i++)
        {
            if (ListBox5.SelectedIndex == i)
            {
                ListBox6.Items.Add(ListBox5.SelectedItem.Text);
                ListBox5.Items.RemoveAt(i);
                break;

            }

        }

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        i = ListBox6.Items.Count - 1;
        if (ListBox6.Items.Count == 0)
        {
            Response.Write("<script language='javascript'>alert('No Record')</script>");
        }
        for (i = 0; i <= ListBox6.Items.Count - 1; i++)
        {
            if (ListBox6.SelectedIndex == i)
            {
                ListBox5.Items.Add(ListBox6.SelectedItem.Text);

                ListBox6.Items.RemoveAt(i);
                break;

            }

        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int i;
        for (i = 0; i <= ListBox2.Items.Count - 1; i++)
        {
            cmd.CommandText = "insert into projectassign values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + Label3.Text + "','" + DateTime.Now.ToString() + "','" + ListBox2.Items[i].Text + "')";
            cmd.ExecuteNonQuery();
        }
        for (i = 0; i <= ListBox4.Items.Count - 1; i++)
        {
            cmd.CommandText = "insert into projectassign values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + Label4.Text + "','" + DateTime.Now.ToString() + "','" + ListBox4.Items[i].Text + "')";
            cmd.ExecuteNonQuery();
        }
        for (i = 0; i <= ListBox6.Items.Count - 1; i++)
        {
            cmd.CommandText = "insert into projectassign values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + Label5.Text + "','" + DateTime.Now.ToString() + "','" + ListBox6.Items[i].Text + "')";
            cmd.ExecuteNonQuery();
        }
   
            
        
        
        
        Response.Write("<script language='javascript'>alert('Project assigned !')</script>");
        
        Session["task_selected"] = TextBox1.Text;
       
    }
    protected void btnShowData_Click(object sender, EventArgs e)
    {
        
        btnShowData.Enabled = false;
        
        string str = "select distinct(fname) from biodata where desig='" + DropDownList1.SelectedItem.Text + " ' and position='project leader'";
        da = new SqlDataAdapter(str, con);
        da.Fill(ds, "desi");
        if (ds.Tables["desi"].Rows.Count == 0)
        {
            Response.Write("<script language='javascript'>alert('No Record')</script>");
        }

        for (i = 0; i <= ds.Tables["desi"].Rows.Count - 1; i++)
        {
            ListBox1.Items.Add(ds.Tables["desi"].Rows[i][0].ToString());
        }
        
        
        
        string str1 = "select distinct(fname) from biodata where desig='" + DropDownList1.SelectedItem.Text + " ' and position='manager'";
        da = new SqlDataAdapter(str1, con);
        da.Fill(ds, "desi1");
        for (i = 0; i <= ds.Tables["desi1"].Rows.Count - 1; i++)
        {
            ListBox3.Items.Add(ds.Tables["desi1"].Rows[i][0].ToString());
        }
        
        
        
        
        string str2 = "select distinct(fname) from biodata where desig='" + DropDownList1.SelectedItem.Text + " ' and position='programmer'";
        da = new SqlDataAdapter(str2, con);
        da.Fill(ds, "desi12");
        for (i = 0; i <= ds.Tables["desi12"].Rows.Count - 1; i++)
        {
            ListBox5.Items.Add(ds.Tables["desi12"].Rows[i][0].ToString());
        }
       
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        btnShowData.Enabled = true;
        ListBox1.Items.Clear();
        ListBox3.Items.Clear();
        ListBox5.Items.Clear();
        ListBox6.Items.Clear();
        ListBox2.Items.Clear();
        ListBox4.Items.Clear();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnShowData.Enabled = true;
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }
}
