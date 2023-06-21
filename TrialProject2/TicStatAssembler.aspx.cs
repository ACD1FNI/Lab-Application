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
    public partial class TicStatAssembler : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            int ticketID = int.Parse(TextBox14.Text.Trim());

            TextBox10.Text = string.Empty;
            TextBox11.Text = string.Empty;
            TextBox12.Text = string.Empty;
            TextBox150.Text = string.Empty;
            TextBox13.Text = string.Empty;
            TextBox8.Text = string.Empty;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                   con.Open();

                    string query = @"SELECT Ticket_DB.*, Report_DB.Comment, Report_DB.Start_time, Report_DB.end_time, Report_DB.Part_Location, Report_DB.ADM_Num, Report_DB.ADM_Name
                        FROM Ticket_DB
                        LEFT JOIN Report_DB ON Ticket_DB.Report_ID = Report_DB.Report_ID
                        WHERE Ticket_DB.TicketID = @TicketID";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@TicketID", ticketID);

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                while (dr.Read())
                                {
                                    TextBox2.Text = dr.GetValue(3).ToString();
                                    TextBox3.Text = dr.GetValue(4).ToString();
                                    TextBox4.Text = dr.GetValue(6).ToString();
                                    DD1.Text = dr.GetValue(2).ToString();
                                    DD2.Text = dr.GetValue(5).ToString();
                                    DD3.Text = dr.GetValue(7).ToString();
                                    DD4.Text = dr.GetValue(8).ToString();
                                    TextBox5.Text = dr.GetValue(1).ToString();
                                    TextBox6.Text = dr.GetValue(9).ToString();
                                    TextBox7.Text = dr.GetValue(10).ToString();
                                    TextBox20.Text = dr.GetValue(12).ToString();
                                    TextBox21.Text = dr.GetValue(14).ToString();
                                    TextBox9.Text = dr.GetValue(11).ToString();

                                    bool hasAdminData = !dr.IsDBNull(dr.GetOrdinal("Comment")) ||
                                    !dr.IsDBNull(dr.GetOrdinal("Start_time")) ||
                                    !dr.IsDBNull(dr.GetOrdinal("end_time")) ||
                                    !dr.IsDBNull(dr.GetOrdinal("Part_Location")) ||
                                    !dr.IsDBNull(dr.GetOrdinal("ADM_Num")) ||
                                    !dr.IsDBNull(dr.GetOrdinal("ADM_Name"));

                                    // Clear the admin fields if no admin data exists
                                    if (!hasAdminData)
                                    {
                                        TextBox10.Text = string.Empty;
                                        TextBox11.Text = string.Empty;
                                        TextBox12.Text = string.Empty;
                                        TextBox150.Text = string.Empty;
                                        TextBox13.Text = string.Empty;
                                        TextBox8.Text = string.Empty;
                                    }
                                    else
                                    { 

                                        // Retrieve the admin-entered details
                                            if (string.IsNullOrEmpty(TextBox10.Text) && !dr.IsDBNull(dr.GetOrdinal("Comment")))
                                            {
                                                TextBox10.Text = dr.GetString(dr.GetOrdinal("Comment"));
                                            }

                                            if (string.IsNullOrEmpty(TextBox11.Text) && !dr.IsDBNull(dr.GetOrdinal("Start_time")))
                                            {
                                                TextBox11.Text = dr.GetString(dr.GetOrdinal("Start_time"));
                                            }

                                            if (string.IsNullOrEmpty(TextBox12.Text) && !dr.IsDBNull(dr.GetOrdinal("end_time")))
                                            {
                                                TextBox12.Text = dr.GetString(dr.GetOrdinal("end_time"));
                                            }

                                            if (string.IsNullOrEmpty(TextBox150.Text) && !dr.IsDBNull(dr.GetOrdinal("Part_Location")))
                                            {
                                                TextBox150.Text = dr.GetString(dr.GetOrdinal("Part_Location"));
                                            }
                                            if (string.IsNullOrEmpty(TextBox13.Text) && !dr.IsDBNull(dr.GetOrdinal("ADM_Num")))
                                            {
                                                int admNum = dr.GetInt32(dr.GetOrdinal("ADM_Num"));
                                                TextBox13.Text = admNum.ToString();
                                            }

                                            if (string.IsNullOrEmpty(TextBox8.Text) && !dr.IsDBNull(dr.GetOrdinal("ADM_Name")))
                                            {
                                                TextBox8.Text = dr.GetString(dr.GetOrdinal("ADM_Name"));
                                            }  
                                            
                                    }
                                }
                            }                        
                        }
                    }
            }          
        }
    }
}