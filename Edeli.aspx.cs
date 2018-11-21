using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Edeli : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(Request.QueryString["uid"].ToString());
        //int pid = Convert.ToInt32(Request.QueryString["pid"].ToString());
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd1 = new SqlCommand("update cart set selled='yes' where uid = '" + uid + "'", cnp);
        cmd1.ExecuteNonQuery();
        Response.Redirect("Ehome.aspx");
    }
}