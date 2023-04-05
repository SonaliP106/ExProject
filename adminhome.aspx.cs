using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("requestdisplayadmin.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("adddrpoadmin.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminorganizer.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("registeruser.aspx");
    }
}