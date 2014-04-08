using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thrive2
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void send_OnClick(object sender, EventArgs e)
        {
            
            Response.Redirect("Login.aspx?url=logout");
            
        }
    }
}