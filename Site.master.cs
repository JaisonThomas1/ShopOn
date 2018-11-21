using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["ctryid"] = "vg";
        Response.Redirect("category.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Session["ctryid"] = "nvg";
        Response.Redirect("category.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["ctryid"] = "cp";
        Response.Redirect("category.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["ctryid"] = "r";
        Response.Redirect("category.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["ctryid"] = "p";
        Response.Redirect("category.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Session["ctryid"] = "kf";
        Response.Redirect("category.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["ctryid"] = "ci";
        Response.Redirect("category.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Session["ctryid"] = "e";
        Response.Redirect("category.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Session["serr"] = Convert.ToString(TextBox3.Text);
        Response.Redirect("ssearch.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Session["serr"] = Convert.ToString(TextBox3.Text);
        Response.Redirect("hphtl.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Session["serr"] = Convert.ToString(TextBox3.Text);
        Response.Redirect("hplth.aspx");
    }
}
