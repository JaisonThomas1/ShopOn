using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Uchangep : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cnp5 = new SqlConnection(str);
        cnp5.Open();
        SqlCommand cmd1 = new SqlCommand("update login set password='" + TextBox2.Text + "' where id='" + Session["id"] + "'", cnp5);
        cmd1.ExecuteNonQuery();
        cnp5.Close();
    }
}