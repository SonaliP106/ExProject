using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class stalllogin : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-IEKF71P;Initial Catalog=Exhibition;Integrated Security=True";
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        cmd.CommandText = "select * from stallregister where emailid='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "stalllogin");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("bookhome.aspx");
        }
        else
        {
            Label1.Text = "incorrect username and password";
        }

        }
    }
