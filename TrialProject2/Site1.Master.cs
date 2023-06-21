using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrialProject2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    LinkButton1.Visible = false;//submit tix
                    LinkButton2.Visible = true;//status
                    LinkButton3.Visible = false;//work tix
                    LinkButton4.Visible = true;//Home
                    LinkButton5.Visible = true;//tech log
                    LinkButton6.Visible = true;//asm log
                    btnLogOut.Visible = false;//logout
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = true;//submit tix
                    LinkButton2.Visible = true;//status
                    LinkButton3.Visible = false;//work tix
                    LinkButton4.Visible = true;//Home
                    LinkButton5.Visible = true;//tech log
                    LinkButton6.Visible = false;//asm log
                    LinkButton7.Visible = true;//hello ujser
                    btnLogOut.Visible = true;//logout
                    LinkButton7.Text = "Hello " + Session["Name"].ToString();
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;//submit tix
                    LinkButton2.Visible = true;//status
                    LinkButton3.Visible = true;//work tix
                    LinkButton4.Visible = true;//Home
                    LinkButton5.Visible = false;//tech log
                    LinkButton6.Visible = true;//asm log
                    btnLogOut.Visible = true;//logout
                    LinkButton7.Visible = true;
                    LinkButton7.Text = "Hello " + Session["ID"].ToString();
                }
            }
            catch(Exception ex)
            {

            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssemblerMainPage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TicStatAssembler.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("TechnicianMainPage.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["ID"] = "";
           // Session["Name"] ="";
            Session["role"] = "";

            LinkButton1.Visible = false;//submit tix
            LinkButton2.Visible = true;//status
            LinkButton3.Visible = true;//work tix
            LinkButton4.Visible = true;//Home
            LinkButton5.Visible = true;//tech log
            LinkButton6.Visible = true;//asm log
            btnLogOut.Visible = false;//logout

            Response.Redirect("HomePage.aspx");
        }

        //tech log
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("TechnicianLogin.aspx");
        }

        //assem log
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssemblerLogin.aspx");
        }

        protected void LinkButton400_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewPart.aspx");
        }

        protected void LinkButton500_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewCustomer.aspx");
        }
    }
}