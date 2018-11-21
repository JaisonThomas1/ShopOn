using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Adelete : System.Web.UI.Page
{
    int pid;
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        pid = Convert.ToInt32(Request.QueryString["pid"].ToString());
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd1 = new SqlCommand("delete from products where id='" + pid + "'", cnp);
        SqlDataReader rd = cmd1.ExecuteReader();
        cnp.Close();
        Response.Redirect("Ahome.aspx");
    }
}