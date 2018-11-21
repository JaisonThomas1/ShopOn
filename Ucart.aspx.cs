using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Ucart : System.Web.UI.Page
{
    int tot=0;
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd1 = new SqlCommand("SELECT total FROM cart WHERE purchased='no' and uid = '"+Session["id"]+"'", cnp);
        SqlDataReader rd = cmd1.ExecuteReader();
        while (rd.Read())
        {
            int n1 = Convert.ToInt32(rd[0]);
            tot = tot + n1;
        }
        Label7.Text = Convert.ToString(tot);
        rd.Close();
        cnp.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Label7.Text == "0")
        {
            Label5.Visible = true;
        }
        else
        {
            Label5.Visible = false;
            SqlConnection cnp2 = new SqlConnection(str);
            cnp2.Open();
            SqlCommand cmd2 = new SqlCommand("update cart set purchased='yes' where uid = '" + Session["id"] + "'", cnp2);
            cmd2.ExecuteNonQuery();
            SqlCommand cmd4 = new SqlCommand("select count(*) from shipping where uid='" + Session["id"] + "'", cnp2);
            cmd4.ExecuteNonQuery();
            int count = Convert.ToInt32(cmd4.ExecuteScalar().ToString());
            if (count > 0)
            {
                SqlCommand cmd5 = new SqlCommand("update shipping set address='" + TextBox1.Text + "',pin= '" + TextBox2.Text + "',contact='" + TextBox3.Text + "' where uid = '" + Session["id"] + "'", cnp2);
                cmd5.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd3 = new SqlCommand("insert into shipping (uid,address,pin,contact) values('" + Session["id"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", cnp2);
                cmd3.ExecuteNonQuery();
            }
            cnp2.Close();
            Response.Redirect("Uhome.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Uhome.aspx");
    }
}