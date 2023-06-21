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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text.Trim() != "62012830")
            {
                Response.Write("<script>alert('Incorrect Key, Please try again!');</script>");
                return;

            }
            else
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" INSERT INTO Tech_DB(ADM_Num,ADM_Name) values(@ADM_Num, @ADM_Name)", con);

                cmd.Parameters.AddWithValue("@ADM_Num", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@ADM_Name", TextBox2.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Added Successfully, Go to Login Page');</script>");

                TextBox1.Text = " ";
                TextBox2.Text = " ";


            }
        }
    }
}