using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class insertinto : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd1 = new SqlCommand("delete from cart where uid='20'", cnp);
        cmd1.ExecuteNonQuery();
        cnp.Close();
    }
}