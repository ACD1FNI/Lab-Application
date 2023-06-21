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
    public partial class AssemblerLogin : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT *from ASSEM_DB where ASM_Num='"+ TextBox1.Text.Trim() + "' AND ASM_Name='" + TextBox2.Text.Trim() +" '" , con);

                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('"+dr.GetValue(0).ToString()+"');</script>");
                        Session["ID"] = dr.GetValue(0).ToString();
                        Session["Name"] = dr.GetValue(1).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("HomePage.aspx");
                  
                }
                else
                {
                    Response.Write("<script>alert('Invalid Login');</script>");

                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }
    }
}