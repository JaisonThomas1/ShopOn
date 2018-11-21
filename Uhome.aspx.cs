using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Uhome : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"]==null)
        {
            Response.Redirect("~/home1.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cnp2 = new SqlConnection(str);
        cnp2.Open();
       // SqlCommand cmd2 = new SqlCommand("insert into cart (uid,pid) values('" + Session["id"] + "','pid')", cnp2);
        //cmd2.ExecuteNonQuery();
        cnp2.Close();
    }
}