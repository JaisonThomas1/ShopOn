using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UMasterPage : System.Web.UI.MasterPage
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("home1.aspx");
        }
        Label2.Text = Convert.ToString(Session["id"]);
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd1 = new SqlCommand("select * from udetails where uid='" + Label2.Text + "'", cnp);
        SqlDataReader rd = cmd1.ExecuteReader();
        while (rd.Read())
        {
            Session["fn"] = Convert.ToString(rd[1]);
            Session["ln"] = Convert.ToString(rd[2]);
        }
        Label1.Text = Convert.ToString(Session["fn"]);
        rd.Close();
        cnp.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        System.Web.Security.FormsAuthentication.SignOut();
        Response.Redirect("~/home1.aspx",false);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["ctry"]="vg";
        Response.Redirect("Ucategory.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Session["ctry"] = "nvg";
        Response.Redirect("Ucategory.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["ctry"] = "cp";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["ctry"] = "r";
        Response.Redirect("Ucategory.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["ctry"] = "p";
        Response.Redirect("Ucategory.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Session["ctry"] = "kf";
        Response.Redirect("Ucategory.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["ctry"] = "ci";
        Response.Redirect("Ucategory.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Session["ctry"] = "e";
        Response.Redirect("Ucategory.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Session["ser"] = Convert.ToString(TextBox3.Text);
        Response.Redirect("Usearch.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Session["ser"] = Convert.ToString(TextBox3.Text);
        Response.Redirect("Uphtl.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Session["ser"] = Convert.ToString(TextBox3.Text);
        Response.Redirect("Uplth.aspx");
    }
}
