using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thrive2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String url = Request.QueryString["url"];

            if (url == null)
            {
                string startupPath = Server.MapPath("~");
                string[] paths = startupPath.Split('\\');

                StreamReader doc_reader = new StreamReader(startupPath + "/Data/" + "Doctor_Reset.txt");
                StreamReader patient_reader = new StreamReader(startupPath + "/Data/" + "Patient_Reset.txt");

                String doc_content = "";
                String patient_content = "";
                while (doc_reader.Peek() >= 0)
                {
                    doc_content += doc_reader.ReadLine();
                }
                doc_reader.Close();


                while (patient_reader.Peek() >= 0)
                {
                    patient_content += patient_reader.ReadLine();
                }
                patient_reader.Close();


                StreamWriter doc_write = new StreamWriter(startupPath + "/Data/" + "Doctor.txt");

                StreamWriter patient_write = null;
                StreamWriter ass_write = null;

                doc_write.WriteLine(doc_content);

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patient.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked).txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patientone.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked)one.txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patienttwo.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked)two.txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patientthree.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked)three.txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patientfour.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked)four.txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patientfive.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked)five.txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patientsix.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked)six.txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patientseven.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked)seven.txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patienteight.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked)eight.txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patientnine.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked)nine.txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();

                patient_write = new StreamWriter(startupPath + "/Data/" + "Patientten.txt");
                ass_write = new StreamWriter(startupPath + "/Data/" + "RachelAssignment2(marked)ten.txt");
                patient_write.WriteLine(patient_content);
                ass_write.WriteLine("\r\n \r\n \r\nF");
                patient_write.Close();
                ass_write.Close();


                doc_write.Close();

                //for (int i = 0; i < 10; i++)
                //{
                //    if (i == 0)
                //    {
                        
                //    }
                //    else if (i == 1)
                //    {
                        

                //    }
                //}
            }

        }
        protected void send_OnClick(object sender, EventArgs e)
        {
            String em = email.Text;
            String p = password.Text;

            if (em.ToString().Equals("david@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "zero");
                Response.Redirect("Therapist/Home.aspx");
            }
            else if (em.ToString().Equals("david1@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "one");
                Response.Redirect("Therapist/Home.aspx");
            }
            else if (em.ToString().Equals("david2@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "two");
                Response.Redirect("Therapist/Home.aspx");
            }
            else if (em.ToString().Equals("david3@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "three");
                Response.Redirect("Therapist/Home.aspx");
            }
            else if (em.ToString().Equals("david4@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "four");
                Response.Redirect("Therapist/Home.aspx");
            }
            else if (em.ToString().Equals("david5@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "five");
                Response.Redirect("Therapist/Home.aspx");
            }
            else if (em.ToString().Equals("david6@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "six");
                Response.Redirect("Therapist/Home.aspx");
            }
            else if (em.ToString().Equals("david7@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "seven");
                Response.Redirect("Therapist/Home.aspx");
            }
            else if (em.ToString().Equals("david8@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "eight");
                Response.Redirect("Therapist/Home.aspx");
            }
            else if (em.ToString().Equals("david9@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "nine");
                Response.Redirect("Therapist/Home.aspx");
            }
            else if (em.ToString().Equals("david10@ktph.com") && p.ToString().Equals("12345"))
            {
                Session.Add("therapistName", "ten");
                Response.Redirect("Therapist/Home.aspx");
            }



            else if (em.ToString().Equals("rachel@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "zero");
                Response.Redirect("Patient/Home.aspx");
            }
            else if (em.ToString().Equals("rachel1@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "one");
                Response.Redirect("Patient/Home.aspx");
            }
            else if (em.ToString().Equals("rachel2@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "two");
                Response.Redirect("Patient/Home.aspx");
            }
            else if (em.ToString().Equals("rachel3@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "three");
                Response.Redirect("Patient/Home.aspx");
            }
            else if (em.ToString().Equals("rachel4@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "four");
                Response.Redirect("Patient/Home.aspx");
            }
            else if (em.ToString().Equals("rachel5@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "five");
                Response.Redirect("Patient/Home.aspx");
            }
            else if (em.ToString().Equals("rachel6@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "six");
                Response.Redirect("Patient/Home.aspx");
            }
            else if (em.ToString().Equals("rachel7@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "seven");
                Response.Redirect("Patient/Home.aspx");
            }
            else if (em.ToString().Equals("rachel8@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "eight");
                Response.Redirect("Patient/Home.aspx");
            }
            else if (em.ToString().Equals("rachel9@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "nine");
                Response.Redirect("Patient/Home.aspx");
            }
            else if (em.ToString().Equals("rachel10@gmail.com") && p.ToString().Equals("12345"))
            {
                Session.Add("username", "ten");
                Response.Redirect("Patient/Home.aspx");
            }
        }
    }
}