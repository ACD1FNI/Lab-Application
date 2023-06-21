using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrialProject2
{
    public partial class NewCustomer : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand(" INSERT INTO Customers(Cus_Name) values(@Cus_Name)", con);

            cmd.Parameters.AddWithValue("@Cus_Name", TextBox1.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Added Successfully');</script>");
        }
    }
}