using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class additem : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-IEKF71P; Initial Catalog=Exhibition;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into request values ('" + TextBox2.Text + "','" + TextBox1.Text + "')";
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Request has successfully send') </script>");
    }
}