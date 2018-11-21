using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Aedelete : System.Web.UI.Page
{
    long eid;
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        eid = Convert.ToInt64(Request.QueryString["eid"].ToString());
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd1 = new SqlCommand("delete from udetails where uname='" + eid + "'", cnp);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("delete from login where uname='" + eid + "'", cnp);
        cmd2.ExecuteNonQuery();
        cnp.Close();
        Response.Redirect("Aviewe.aspx");
    }
}