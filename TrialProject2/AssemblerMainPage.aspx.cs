using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;


namespace TrialProject2
{
    public partial class AssemblerMainPage : System.Web.UI.Page
    {
        private const int PageSize = 1000;


        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillValues(1, string.Empty);
                Response.Write("Page_Load executed");
            }

        }

        protected void DropDownList2_ItemsRequested(object sender, EventArgs e)
        {
            int page = int.Parse(Request.Params["__EVENTARGUMENT"] ?? "1");
            string searchInput = TextBoxSearch.Text.Trim();
            FillValues(page, searchInput);
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            int page = 1; // Reset the page to 1 when performing a new search
            string searchInput = TextBoxSearch.Text.Trim();
            FillValues(page, searchInput);
        }

        void FillValues(int page, string searchInput)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                int startIndex = (page - 1) * PageSize + 1;
                int endIndex = page * PageSize;

                string query = "SELECT Part_Name FROM (SELECT Part_Name, ROW_NUMBER() OVER (ORDER BY Part_Name) AS RowNum FROM Parts WHERE Part_Name LIKE @SearchInput) AS T WHERE RowNum >= @StartRow AND RowNum <= @EndRow;";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@SearchInput", "%" + searchInput + "%");
                cmd.Parameters.AddWithValue("@StartRow", startIndex);
                cmd.Parameters.AddWithValue("@EndRow", endIndex);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                DropDownList2.Items.Clear();

                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        ListItem item = new ListItem(row["Part_Name"].ToString());
                        DropDownList2.Items.Add(item);
                    }
                }
                else
                {
                    DropDownList2.Items.Add("No results found");
                }


                cmd = new SqlCommand("SELECT Cus_Name FROM Customers;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);


                DropDownList5.Items.Clear(); // Clear existing items

                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        ListItem item = new ListItem(row["Cus_Name"].ToString());
                        DropDownList5.Items.Add(item);
                    }
                }
                else
                {
                    DropDownList5.Items.Add("No results found");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        private string GetNameFromDatabase(int id)
        {
            string ASM_Name = string.Empty;


            using (SqlConnection con = new SqlConnection(strcon))
            {
                string query = "SELECT ASM_Name FROM ASSEM_DB WHERE ASM_Num = @ASM_Num";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ASM_Num", id);

                con.Open();
                object result = cmd.ExecuteScalar();
                if (result != null)
                {
                    ASM_Name = result.ToString();
                }
            }

            return ASM_Name;
        }

        protected void ButtonSubmit_Click_Click(object sender, EventArgs e)
        {
            int enteredID = int.Parse(TextBox1.Text.Trim());
            string ASM_Name = GetNameFromDatabase(enteredID);
            TextBox5.Text = ASM_Name;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ticketID = 0;

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" INSERT INTO Ticket_DB(Quantity,Building,ASM_Num,ASM_Name,Part_Name,Work_Order,ServiceReqType,Cus_Name,Comments,Sub_Date," +
                    "Status,fileName1,filePath1,fileName2,filePath2) OUTPUT INSERTED.TicketID values(@Quantity,@Building,@ASM_Num,@ASM_Name,@Part_Name,@Work_Order,@ServiceReqType,@Cus_Name,@Comments,@Sub_Date," +
                    "@Status,@fileName1,@filePath1,@fileName2,@filePath2);", con);

                cmd.Parameters.AddWithValue("@Quantity", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Building", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@ASM_Num", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@ASM_Name", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Part_Name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Work_Order", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@ServiceReqType", DropDownList4.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Cus_Name", DropDownList5.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Comments", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Sub_Date", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Status", "In progress");

                string fileName1 = null;
                string filePath1 = null;
                string fileName2 = null;
                string filePath2 = null;


                if (FileUpload1.HasFile)
                {
                    ticketID = GetNextTicketID();
                    string ticketFolder1 = GetTicketFolder(ticketID.ToString());
                    fileName1 = Path.GetFileName(FileUpload1.FileName);
                    filePath1 = Path.Combine(ticketFolder1, fileName1);

                    Directory.CreateDirectory(ticketFolder1);

                    FileUpload1.SaveAs(filePath1);
                    
                }
                

                // Process file 2
                if (FileUpload2.HasFile)
                {
                    if (ticketID == 0)
                    {
                        ticketID = GetNextTicketID(); // Assuming there is a method to retrieve the next available ticket ID
                    }
                    string ticketFolder2 = GetTicketFolder(ticketID.ToString());
                    fileName2 = Path.GetFileName(FileUpload2.FileName);
                    filePath2 = Path.Combine(ticketFolder2, fileName2);

                    Directory.CreateDirectory(ticketFolder2);

                    FileUpload2.SaveAs(filePath2);
                   
                }
                cmd.Parameters.AddWithValue("@fileName1", fileName1 ?? DBNull.Value.ToString());
                cmd.Parameters.AddWithValue("@filePath1", filePath1 ?? DBNull.Value.ToString());
                cmd.Parameters.AddWithValue("@fileName2", fileName2 ?? DBNull.Value.ToString());
                cmd.Parameters.AddWithValue("@filePath2", filePath2 ?? DBNull.Value.ToString());


                ticketID = Convert.ToInt32(cmd.ExecuteScalar());

                con.Close();

                Response.Write("<script>alert('Ticket submitted Successfully');</script>");
                TextBox6.Text = string.Empty;
                TextBox1.Text = string.Empty;
                TextBox5.Text = string.Empty;
                DropDownList1.ClearSelection();
                DropDownList2.ClearSelection();
                TextBox2.Text = string.Empty;
                DropDownList4.ClearSelection();
                DropDownList5.ClearSelection();
                TextBox8.Text = string.Empty;
                TextBox9.Text = string.Empty;
                TextBoxSearch.Text = " ";


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
           

        }
        private string GetTicketFolder(string ticketID)
        {
            string baseFolder = @"S:\DEPT\QMM\Shared\09 Record Logs\01_Measurement analysis";
            string ticketFolder = Path.Combine(baseFolder, ticketID);
            return ticketFolder;
        }
        private int GetNextTicketID()
        {
            // Assuming there is a method or logic to retrieve the next available ticket ID
            // You can replace this with your own implementation based on your database schema and requirements
            // Here, we'll simply increment a counter variable for demonstration purposes

            // Get the current highest ticket ID from the database
            int nextTicketID = 0;

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT ISNULL(MAX(TicketID), 0) FROM Ticket_DB;", con);
            nextTicketID = (int)cmd.ExecuteScalar() +1;

            con.Close();

            // Increment the highest ticket ID by 1 to get the next available ticket ID
           

            return nextTicketID;
        }

    }
}