using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thrive2
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string startupPath = Server.MapPath("~");
            string[] paths = startupPath.Split('\\');
            StreamReader reader = new StreamReader(startupPath + "/data/" + "RachelAssignment2(marked).txt");
            string[] content = new string[6];
            if (reader.Peek() > 0)
            {

                for (int i = 0; i < reader.Peek(); i++)
                {
                    content[i] = reader.ReadLine();
                }
                lblNotification.Text = content[1];

                reader.Close();
            }
        }
    }
}