using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Areport : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["shopConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        int sum=0;
        SqlConnection cnp = new SqlConnection(str);
        cnp.Open();
        SqlCommand cmd1 = new SqlCommand("select total from cart where purchased='yes' and selled='yes'", cnp);
        SqlDataReader rd = cmd1.ExecuteReader();
        while (rd.Read())
        {
            int t = Convert.ToInt32(rd[0]);
            sum = sum + t;
        }
        Label6.Text = Convert.ToString(sum);
        cnp.Close();
    }
}