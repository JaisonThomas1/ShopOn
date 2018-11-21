using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Aupdate : System.Web.UI.Page
{
    int pid;
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        pid = Convert.ToInt32(Request.QueryString["pid"].ToString());
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd1 = new SqlCommand("select * from products where id='" + pid + "'", cnp);
        SqlDataReader rd = cmd1.ExecuteReader();
        while (rd.Read())
        {
            TextBox1.Text = Convert.ToString(rd[1]);
            TextBox5.Text = Convert.ToString(rd[3]);
            DropDownList1.SelectedValue = Convert.ToString(rd[2]);
            Session["avl"] = Convert.ToString(rd[4]);
        }
        cnp.Close();
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
        int q4=Convert.ToInt32(TextBox6.Text);
        int q3 = Convert.ToInt32(Session["avl"]);
        int qt=q3+q4;
        SqlConnection cnp1 = new SqlConnection(str);
        cnp1.Open();
        SqlCommand cmd2 = new SqlCommand("update products set pname='" + TextBox1.Text + "',ctgry='" + DropDownList1.SelectedValue + "',price='" + TextBox5.Text + "',qty='" + qt + "' where id='" + pid + "'", cnp1);
        cmd2.ExecuteNonQuery();
        cnp1.Close();
        Response.Write("<script language='javascript'>alert('Item updated');</script>");
        Response.Redirect("Ahome.aspx");
    }
}