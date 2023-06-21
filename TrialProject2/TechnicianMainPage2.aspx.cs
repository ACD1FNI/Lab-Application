using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace TrialProject2
{
    public partial class TechnicianMainPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button2_Click(object sender, EventArgs e)
       // {
            //SqlConnection con = new SqlConnection(strcon);
            //if (con.State == ConnectionState.Closed)
            //{
              //  con.Open();
            //}

          //  SqlCommand cmd = new SqlCommand(" INSERT INTO Report_DB(Comments,Start_time,end_time,Part_Location,ADM_Num,ADM_Name) values(@Comments,@Start_time,@end_time,@Part_Location,@ADM_Num,@ADM_Name);", con);
/*
            cmd.Parameters.AddWithValue("@Part_Location", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@ADM_Num", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@ADM_Name", TextBox12.Text.Trim());
            cmd.Parameters.AddWithValue("@Comments", TextBox15.Text.Trim());
            cmd.Parameters.AddWithValue("@Start_time", TextBox16.Text.Trim());
            cmd.Parameters.AddWithValue("@end_time", TextBox11.Text.Trim());
            cmd.Parameters.AddWithValue("@Status", "In progress");
           */


          //  cmd.ExecuteNonQuery();
            //con.Close();
        //}
    }
}