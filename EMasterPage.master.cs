using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class EMasterPage : System.Web.UI.MasterPage
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("home1.aspx");
        }
        Employee.Text = Convert.ToString(Session["id"]);
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd1 = new SqlCommand("select * from udetails where uid='" + Employee.Text + "'", cnp);
        SqlDataReader rd = cmd1.ExecuteReader();
        while (rd.Read())
        {
            Session["fn"] = Convert.ToString(rd[1]);
        }
        Employee.Text = Convert.ToString(Session["fn"]);
        rd.Close();
        cnp.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["id"] = null;
        Response.Redirect("home1.aspx");
    }
}
