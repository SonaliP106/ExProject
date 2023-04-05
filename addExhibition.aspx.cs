using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addExhibition : System.Web.UI.Page
{
    static String imagelink;
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-IEKF71P; Initial Catalog=Exhibition; Integrated Security=true");

    protected void Page_Load(object sender, EventArgs e)
    {
        string s;
        s = "select * from COUNTRY";

        cn.Open();
        SqlCommand cmd = new SqlCommand(s, cn);

        if (country.Page.IsPostBack == false)
        {
            
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                country.Items.Add(rs.GetString(1));
            }
            cn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (uploadimage() == true)
        {
            String query = "insert into exhibitiondetail(organizername,exhibitiontype,address,startingdate,endingdate,costperstall,totalstall,exhibition,eximage) values ('" + TextBox1.Text + "','" + country.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + " ','"+ TextBox4.Text + "','"+TextBox5.Text+ "','"+ TextBox6.Text+"','" + country.Text +"','" + imagelink + "')";
            String mycon = "Data Source=DESKTOP-IEKF71P; Initial Catalog=Exhibition; Integrated Security=true";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Exhibition Has Been Saved Successfully";
        }
    }
    private Boolean uploadimage()
    {
        Boolean imagesaved = false;
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "image/jpeg")
            {
                int filesize;
                filesize = FileUpload1.PostedFile.ContentLength;

                if (filesize <= 102400)
                {
                    System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                    int height = img.Height;
                    int width = img.Width;
                    if (height <= 600 && width <= 600)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/eximage/") + TextBox1.Text + ".jpg");
                        Image1.ImageUrl = "~/eximage/" + TextBox1.Text + ".jpg";
                        imagelink = "eximage/" + TextBox1.Text + ".jpg";
                        imagesaved = true;
                    }
                    else
                    {
                        Label1.Text = "Kindly Upload JPEG Image in Proper Dimensions 600 x 600 or less than";
                    }




                }
                else
                {
                    Label1.Text = "File Size exceeds 100 KB - Please Upload File Size Maximum 100 KB";
                }

            }
            else
            {
                Label1.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
            }
        }
        else
        {
            Label1.Text = "You have not selected any file - Browse and Select File First";
        }

        return imagesaved;

    }

   
    
}