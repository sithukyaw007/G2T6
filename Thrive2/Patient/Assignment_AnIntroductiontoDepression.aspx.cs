using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thrive2.Patient
{
    public partial class Assignment_AnIntroductiontoDepression : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            Boolean done = false;
            string pname = "Rachel";
            string assignmentno = "Assignment 3";
            string moduletitle = "An Introduction to Depression";
            string q1 = tbx_q1.Text.ToString();
            string q2 = tbx_q2.Text.ToString();
            string q3 = tbx_q3.Text.ToString();
            string q4 = tbx_q4.Text.ToString();
            string a_duration = tbx_a_duration.Text.ToString();
            string a_nooftimes = tbx_a_nooftimes.Text.ToString();
            string a_overcome = tbx_a_overcome.Text.ToString();
            string d_duration = tbx_d_duration.Text.ToString();
            string d_nooftimes = tbx_d_nooftimes.Text.ToString();
            string d_overcome = tbx_d_overcome.Text.ToString();
            string h_duration = tbx_h_duration.Text.ToString();
            string h_nooftimes = tbx_h_nooftimes.Text.ToString();
            string h_overcome = tbx_h_overcome.Text.ToString();
            string s_duration = tbx_s_duration.Text.ToString();
            string s_nooftimes = tbx_s_nooftimes.Text.ToString();
            string s_overcome = tbx_s_overcome.Text.ToString();
            string submissiondate = System.DateTime.Now.ToString();

            string startupPath = Server.MapPath("~");
            TextWriter tw = new StreamWriter(startupPath + "/Data/" + pname + "Assignment3.txt");

            // write a line of text to the file
            tw.WriteLine("Module Title:" + moduletitle);
            tw.WriteLine("Assignment No.:" + assignmentno);
            tw.WriteLine("Submitted on" + submissiondate);
            tw.WriteLine("Q1: What do you understand thw word Depression?:" + q1);
            tw.WriteLine("Q2: What are the symptoms and  signs of depression?" + q2);
            tw.WriteLine("Q3: What are the types of depression?" + q3);
            tw.WriteLine("Q4: How can we tackle the depression?" + q4);
            tw.WriteLine("Self-Assessment");
            tw.WriteLine("[Happy]: No. of times: " + h_nooftimes);
            tw.WriteLine("[Happy]: Total Duration: " + h_duration);
            tw.WriteLine("[Happy]: How he/she overcame: " + h_overcome);
            tw.WriteLine("[Sad]: No. of times: " + s_nooftimes);
            tw.WriteLine("[Sad]: Total Duration: " + s_duration);
            tw.WriteLine("[Sad]: How he/she overcame: " + s_overcome);
            tw.WriteLine("[Angry]: No. of times: " + a_nooftimes);
            tw.WriteLine("[Angry]: Total Duration: " + a_duration);
            tw.WriteLine("[Angry]: How he/she overcame: " + a_overcome);
            tw.WriteLine("[Depressed]: No. of times: " + d_nooftimes);
            tw.WriteLine("[Depressed]: Total Duration: " + d_duration);
            tw.WriteLine("[Depressed]: How he/she overcame: " + d_overcome);

            // close the stream
            tw.Close();

            string message = "You have successfully submitted the assignment.";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            done = true;

            if (done == true)
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}