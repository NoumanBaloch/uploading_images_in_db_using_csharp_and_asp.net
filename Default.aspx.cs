using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Graphical_Authentication_Based_on_CCP\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
       
        if (FileUpload1.HasFile)
        {
            string strname = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into upload values('" + TextBox1.Text + "','" + strname + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Image Uploaded successfully";
            TextBox1.Text = "";
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Plz upload the image!!!!";
        }  

    }
}