using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class stallregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     

    }






    protected void Button1_Click(object sender, EventArgs e)
    {
        Boolean useravailable;
        useravailable = checkusername(TextBox5.Text);
        if (useravailable)
        {
            if (TextBox6.Text == TextBox0.Text)
            {
                String mycon = "Data Source=DESKTOP-IEKF71P; Initial Catalog=Exhibition;Integrated Security=true";
                SqlConnection con = new SqlConnection(mycon);
                String sname = "UserData111";
                con.Open();
                SqlCommand cmd = new SqlCommand(sname, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@contact", TextBox2.Text);
                cmd.Parameters.AddWithValue("@emailid", TextBox3.Text);
                cmd.Parameters.AddWithValue("@address", TextBox4.Text);
                cmd.Parameters.AddWithValue("@username", TextBox5.Text);
                cmd.Parameters.AddWithValue("@password", TextBox6.Text);

                cmd.ExecuteNonQuery();
                Response.Redirect("stalllogin.aspx");
                Label0.Text = "New Registration Successfully Saved - Thanks For Registration";
            }
            else
            {
                Label2.Text = "Password and Confirm Password Not Matched - ReEnter Password";
            }

        }
        else
        {
            Label4.Text = "UserName Not Available";
        }

    }



    public Boolean checkusername(String username)
    {
        Boolean userstatus;
        String mycon = "Data Source=DESKTOP-IEKF71P; Initial Catalog=Exhibition;Integrated Security=True";
        String myquery = "Select * from stallregister where username='" + TextBox5.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;

        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            userstatus = false;
        }
        else
        {
            userstatus = true;

        }
        con.Close();

        return userstatus;

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        if (TextBox2.Text.Length == 10)
        {
        }
        else
        {
            Label5.Text = "enter 10 digit";

        }
    }
}




