using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thrive2.Patient
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string startupPath = Server.MapPath("~");
            string[] paths = startupPath.Split('\\');

            string username = (String)(Session["username"]);
            string patientFileName = "";

            if (username.Equals("zero"))
            {                
                patientFileName = "Patient.txt";
            }
            else if (username.Equals("one"))
            {                
                patientFileName = "Patientone.txt";
            }
            else if (username.Equals("two"))
            {
                patientFileName = "Patienttwo.txt";
            }
            else if (username.Equals("three"))
            {
                patientFileName = "Patientthree.txt";
            }
            else if (username.Equals("four"))
            {
                patientFileName = "Patientfour.txt";
            }
            else if (username.Equals("five"))
            {
                patientFileName = "Patientfive.txt";
            }
            else if (username.Equals("six"))
            {
                patientFileName = "Patientsix.txt";
            }
            else if (username.Equals("seven"))
            {
                patientFileName = "Patientseven.txt";
            }
            else if (username.Equals("eight"))
            {
                patientFileName = "Patienteight.txt";
            }
            else if (username.Equals("nine"))
            {
                patientFileName = "Patientnine.txt";
            }
            else if (username.Equals("ten"))
            {
                patientFileName = "Patientten.txt";
            }

            StreamReader reader = new StreamReader(startupPath + "\\Data\\" + patientFileName);
            string[] content = new string[6];
            if (reader.Peek() > 0)
            {

                for (int i = 0; i < reader.Peek(); i++)
                {
                    content[i] = reader.ReadLine();
                }

                String value = "";

                foreach (String s in content)
                {
                    value += s;
                }
                lblNotification.Text = "";
                lblNotification.Text += value;

                reader.Close();
            }
        }
    }
}