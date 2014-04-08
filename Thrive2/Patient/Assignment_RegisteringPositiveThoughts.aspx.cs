using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thrive2.Patient
{
    public partial class Assignment_RegisteringPositiveThoughts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string startupPath = Server.MapPath("~");
            string[] paths = startupPath.Split('\\');
            TextReader reader = new StreamReader(startupPath + "/Data/" + "RachelAssignment1(marked).txt");
            TextReader reader2 = new StreamReader(startupPath + "/Data/" + "RachelAssignment1.txt");

            string[] feedback = new string[5];
            for (int i = 0; i < reader.Peek(); i++)
            {
                feedback[i] = reader.ReadLine();
            }
            tbx_feedback.Text = "Feedback" + "\r\n\r\n" + feedback[1];

            while (reader2.Peek() >= 0)
            {
                tbx_assignment.Text += reader2.ReadLine() + "\r\n";
            }
            reader.Close();
            reader2.Close();
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Patient/Home.aspx");
        }
    }
}