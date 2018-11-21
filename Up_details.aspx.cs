using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Up_details : System.Web.UI.Page
{
    int pid;
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
         pid = Convert.ToInt32(Request.QueryString["pid"].ToString());
         TextBox2.Text =Convert.ToString(pid);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int cnt = Convert.ToInt32(TextBox1.Text.ToString());
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd = new SqlCommand("select * from products where id='" + TextBox2.Text + "'", cnp);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            int price = Convert.ToInt32(dr[3]);
            int aqt = Convert.ToInt32(dr[4]);
            int qt = Convert.ToInt32(TextBox1.Text);
            int c3 = price * qt;
            if (qt > aqt)
            {
                Label3.Visible = true;
                Label4.Visible = false;
                //Response.Redirect("Updetails.aspx");
            }
            else
            {
                dr.Close();
                SqlCommand cmd1 = new SqlCommand("insert into cart(uid,pid,qty,total)values('"+Session["id"]+"','" + TextBox2.Text + "','"+qt+"','"+c3+"')", cnp);
                cmd1.ExecuteNonQuery();
                int bal = aqt - qt;
                SqlCommand cmd2 = new SqlCommand("update products set qty='"+bal+"' where id='"+pid+"'",cnp);
                cmd2.ExecuteNonQuery();
                cnp.Close();
                Label4.Visible = true;
                Label3.Visible = false;
            }
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
    
    }
}