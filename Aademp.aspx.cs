using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Aademp : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("~/home1.aspx");
        }
    }
    protected void createbtn1_Click(object sender, EventArgs e)
    {
        Label5.Visible = false;
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd1 = new SqlCommand("select id from login where uname='" + TextBox6.Text + "'", cnp);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            Label5.Visible = true;
            cnp.Close();
        }
        else
        {
            dr.Close();
            cnp.Close();
            SqlConnection cnp2 = new SqlConnection(str);
            cnp2.Open();
            SqlCommand cmd2 = new SqlCommand("insert into login (uname,password,type) values('" + TextBox6.Text + "','" + TextBox7.Text + "','e')", cnp2);
            cmd2.ExecuteNonQuery();
            cnp2.Close();
            SqlConnection cnp3 = new SqlConnection(str);
            cnp3.Open();
            SqlCommand cmd3 = new SqlCommand("select * from login where uname='" + TextBox6.Text + "' and password='" + TextBox7.Text + "'", cnp3);
            SqlDataReader rd = cmd3.ExecuteReader();
            while (rd.Read())
            {
                TextBox5.Text = Convert.ToString(rd[0]);
            }
            rd.Close();
            cnp3.Close();
            SqlConnection cnp1 = new SqlConnection(str);
            cnp1.Open();
            SqlCommand cmd = new SqlCommand("insert into udetails (uid,fname,lname,address,pin,uname) values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "')", cnp1);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Redirect("Ahome.aspx");
            }
            cnp1.Close();
        }
    }
    protected void resetbtn1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        Label5.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}