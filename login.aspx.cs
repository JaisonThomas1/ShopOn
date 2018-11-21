using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from login where uname='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'", cnp);
        cmd.ExecuteNonQuery();
        int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        if (count == 1)
        {
            Label1.Visible = false;
            SqlCommand cmd1 = new SqlCommand("select * from login where uname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", cnp);
            SqlDataReader rd = cmd1.ExecuteReader();
            while (rd.Read())
            {
                TextBox3.Text = Convert.ToString(rd[3]);
                Session["id"] = Convert.ToString(rd[0]);
            }
            if (TextBox3.Text == "a")
            {
                Response.Redirect("Ahome.aspx");
            }
            if (TextBox3.Text == "e")
            {
                Response.Redirect("Ehome.aspx");
            }
            else
            {
                Response.Redirect("Uhome.aspx");
            }
        }
        else
        {
            Label1.Visible=true;
        }
        cnp.Close();
        //"insert into login(uname,password,type) values('admin','admin','a')"
    }
}