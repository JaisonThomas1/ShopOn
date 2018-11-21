using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AMasterPage : System.Web.UI.MasterPage
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
        Session["id"] = null;
        Response.Redirect("~/home1.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["ctryi"] = "vg";
        Response.Redirect("Amcategory.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Session["ctryi"] = "nvg";
        Response.Redirect("Amcategory.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["ctryi"] = "cp";
        Response.Redirect("Amcategory.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["ctryi"] = "r";
        Response.Redirect("Amcategory.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["ctryi"] = "p";
        Response.Redirect("Amcategory.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Session["ctryi"] = "kf";
        Response.Redirect("Amcategory.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["ctryi"] = "ci";
        Response.Redirect("Amcategory.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Session["ctryi"] = "e";
        Response.Redirect("Amcategory.aspx");
    }
}
