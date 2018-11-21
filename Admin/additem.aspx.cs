using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class Admin_additem : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void resetbtn_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox6.Text = "";
    }
    protected void createbtn_Click(object sender, EventArgs e)
    {
        SqlConnection cnp2 = new SqlConnection(str);
        cnp2.Open();
        string path=Server.MapPath("img/");
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(path + FileUpload1.FileName);
            string name = "~/img/" + FileUpload1.FileName;
            SqlCommand cmd2 = new SqlCommand("insert into products (pname,ctgry,price,qty,img) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + name + "')", cnp2);
            cmd2.ExecuteNonQuery();
            cnp2.Close();
            Response.Redirect("home.aspx");
        }
        else
        {
            Response.Redirect("additem.aspx");
        }
        
    }
}