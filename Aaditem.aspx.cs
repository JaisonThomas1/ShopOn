using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Aaditem : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("~/home1.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cnp2 = new SqlConnection(str);
        cnp2.Open();
        string path = Server.MapPath("img/");
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(path + FileUpload1.FileName);
            string name = "img/" + FileUpload1.FileName;
            SqlCommand cmd2 = new SqlCommand("insert into products (pname,ctgry,price,qty,img,cmpn) values('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + name + "','" + TextBox2.Text + "')", cnp2);
            cmd2.ExecuteNonQuery();
            cnp2.Close();
            Response.Redirect("Ahome.aspx");
        }
        else
        {
            Response.Redirect("Aaditem.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox2.Text = "";
    }
}