using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;



public partial class adminlogin : System.Web.UI.Page

{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter ab = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-IEKF71P; Initial Catalog=Exhibition; Integrated Security=true";
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from admin where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        cmd.Connection = con;
        ab.SelectCommand = cmd;
        ab.Fill(ds, "admin");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("adminhome.aspx");
        }
        else{
            Label1.Text = "enter valid username and password";
        }
    }
}