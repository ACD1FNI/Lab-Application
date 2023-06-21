using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrialProject2
{
    public partial class TechnicianMainPage1 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //Submit Button
        protected void Button1_Click(object sender, EventArgs e)
        {


            int ticketID = int.Parse(TextBox14.Text.Trim());

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand insertCmd = new SqlCommand("INSERT INTO Report_DB (Comment, Start_time, end_time, Part_Location, ADM_Num, ADM_Name) VALUES (@Comment, @Start_time, @end_time, @Part_Location, @ADM_Num, @ADM_Name); SELECT SCOPE_IDENTITY();", con);
            insertCmd.Parameters.AddWithValue("@Comment", TextBox9.Text.Trim());
            insertCmd.Parameters.AddWithValue("@Start_time", TextBox10.Text.Trim());
            insertCmd.Parameters.AddWithValue("@end_time", TextBox11.Text.Trim());
            insertCmd.Parameters.AddWithValue("@Part_Location", DropDownList6.SelectedItem.Value);
            insertCmd.Parameters.AddWithValue("@ADM_Num", TextBox13.Text.Trim());
            insertCmd.Parameters.AddWithValue("@ADM_Name", TextBox7.Text.Trim());

            // Execute the insert command and retrieve the generated Report_ID
            int generatedReportID = Convert.ToInt32(insertCmd.ExecuteScalar());
            System.Diagnostics.Debug.WriteLine("Generated Report_ID: " + generatedReportID);

            // Update the Ticket_DB record with the generated Report_ID
            SqlCommand updateCmd = new SqlCommand("UPDATE Ticket_DB SET Report_ID = @Report_ID WHERE TicketID = @TicketID", con);
            updateCmd.Parameters.AddWithValue("@Report_ID", generatedReportID);
            updateCmd.Parameters.AddWithValue("@TicketID", ticketID);
            updateCmd.ExecuteNonQuery();

            con.Close();

            Response.Write("<script>alert('Ticket submitted Successfully');</script>");
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;

            TextBox9.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox11.Text = string.Empty;
            TextBox13.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox14.Text = string.Empty;
            DropDownList6.ClearSelection();
            DD1.Text = string.Empty;
            DD2.Text = string.Empty;
            DD3.Text = string.Empty;
            DD4.Text = string.Empty;


            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox20.Text = string.Empty;
            TextBox21.Text = string.Empty;
            TextBox8.Text = string.Empty;



        }
        //Getting name from DB
        private string GetNameFromDatabase(int id)
        {
            string ADM_Name = string.Empty;


            using (SqlConnection con = new SqlConnection(strcon))
            {
                string query = "SELECT ADM_Name FROM Tech_DB WHERE ADM_Num = @ADM_Num";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ADM_Num", id);

                con.Open();
                object result = cmd.ExecuteScalar();
                if (result != null)
                {
                    ADM_Name = result.ToString();
                }
            }

            return ADM_Name;
        }
        //GO Button for tech Name pull up
        protected void ButtonSubmit_Click_Click(object sender, EventArgs e)
        {
            int enteredID = int.Parse(TextBox13.Text.Trim());
            string ADM_Name = GetNameFromDatabase(enteredID);
            TextBox7.Text = ADM_Name;
        }
        //Success
        protected void ButtonA_Click(object sender, EventArgs e)

        {
            UpdateStatus("Completed");
            TextBox8.Text = "completed";
        }
        //Pending
        protected void ButtonB_Click(object sender, EventArgs e)
        {
            UpdateStatus("Pending");
            TextBox8.Text = "Pending";
        }
        //Ticket ID Go button
        protected void Button3_Click(object sender, EventArgs e)
        {
            TicketIDDetails();
        }
        //Go button backend code function to populate the fields
        void TicketIDDetails()
        {



            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }



            SqlCommand cmd = new SqlCommand("SELECT * from Ticket_DB where TicketID='" + TextBox14.Text.Trim() + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    TextBox1.Text = dr.GetValue(3).ToString();
                    TextBox2.Text = dr.GetValue(4).ToString();
                    TextBox3.Text = dr.GetValue(6).ToString();
                    TextBox4.Text = dr.GetValue(1).ToString();
                    DD1.Text = dr.GetValue(2).ToString();
                    DD2.Text = dr.GetValue(5).ToString();
                    DD3.Text = dr.GetValue(7).ToString();
                    DD4.Text = dr.GetValue(8).ToString();
                    TextBox5.Text = dr.GetValue(9).ToString();
                    TextBox6.Text = dr.GetValue(10).ToString();
                    TextBox20.Text = dr.GetString(12);
                    TextBox21.Text = dr.GetString(14);
                    TextBox8.Text = dr.GetValue(11).ToString();
                }
            }
        }
        void UpdateStatus(string status)
        {


            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }



            SqlCommand cmd = new SqlCommand("UPDATE Ticket_DB SET Status='" + status + "' WHERE TicketID='" + TextBox14.Text.Trim() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }


    }
      
}