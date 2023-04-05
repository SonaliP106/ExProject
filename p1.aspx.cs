using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Security.Cryptography; 

public partial class p1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dd1.Items.Add(new ListItem("--Select organizer--", ""));
            dd1.AppendDataBoundItems = true;

            String strConnString = "Data Source=DESKTOP-IEKF71P; Initial Catalog=Exhibition;Integrated Security=true";

            String strQuery = "select organizername from exhibitiondetail";
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                dd1.DataSource = cmd.ExecuteReader();

                dd1.DataValueField = "organizername";

                dd1.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }

        }
       
        Random random = new Random();
        txnid.Value = (Convert.ToString(random.Next(10000, 20000)));
        txnid.Value = "sonali" + txnid.Value.ToString();
        Response.Write(txnid.Value.ToString());
    }
    protected void dd1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String strConnString = "Data Source=DESKTOP-IEKF71P; Initial Catalog=Exhibition;Integrated Security=true";
        String strQuery = "select costperstall from exhibitiondetail where" +
                          " organizername = @organizername";
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.AddWithValue("@organizername", dd1.SelectedItem.Value);
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strQuery;
        cmd.Connection = con;
        try
        {
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {

                TextBox0.Text = sdr["costperstall"].ToString();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Double amount = Convert.ToDouble(TextBox0.Text);

        String text = key.Value.ToString() + "|" + txnid.Value.ToString() + "|" + amount + "|" + "stall" + "|" + TextBox1.Text + "|" + TextBox2.Text + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "||||||" + salt.Value.ToString();
        //Response.Write(text);
        byte[] message = Encoding.UTF8.GetBytes(text);

        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);
        }
        hash.Value = hex;

        System.Collections.Hashtable data = new System.Collections.Hashtable();
        data.Add("hash", hex.ToString());
        data.Add("txnid", txnid.Value);
        data.Add("key", key.Value);
        // string AmountForm = ;// eliminating trailing zeros

        data.Add("amount", amount);
        data.Add("firstname", TextBox1.Text.Trim());
        data.Add("email", TextBox2.Text.Trim());
        data.Add("phone", TextBox3.Text.Trim());
        data.Add("productinfo", "stall");
        data.Add("udf1", "1");
        data.Add("udf2", "1");
        data.Add("udf3", "1");
        data.Add("udf4", "1");
        data.Add("udf5", "1");

        data.Add("surl", "http://localhost:2527/ExStall/t.aspx");
        data.Add("furl", "http://localhost:2527/ExStall/f.aspx");

        data.Add("service_provider", "");


        string strForm = PreparePOSTForm("https://test.payu.in/_payment", data);
        Page.Controls.Add(new LiteralControl(strForm));
    }

    private string PreparePOSTForm(string url, System.Collections.Hashtable data)      
    {
 
        string formID = "PostForm";
      
        StringBuilder strForm = new StringBuilder();
        strForm.Append("<form id=\"" + formID + "\" name=\"" +
                       formID + "\" action=\"" + url +
                       "\" method=\"POST\">");

        foreach (System.Collections.DictionaryEntry key in data)
        {

            strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                           "\" value=\"" + key.Value + "\">");
        }


        strForm.Append("</form>");
        //Build the JavaScript which will do the Posting operation.
        StringBuilder strScript = new StringBuilder();
        strScript.Append("<script language='javascript'>");
        strScript.Append("var v" + formID + " = document." +
                         formID + ";");
        strScript.Append("v" + formID + ".submit();");
        strScript.Append("</script>");
        //Return the form and the script concatenated.
        //(The order is important, Form then JavaScript)
        return strForm.ToString() + strScript.ToString();
    }

}


