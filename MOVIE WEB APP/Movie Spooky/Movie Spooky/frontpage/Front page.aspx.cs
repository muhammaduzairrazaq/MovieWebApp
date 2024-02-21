using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Spooky
{
    public partial class Front_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void changepage(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp/SignUpPage.aspx");
        }
        protected void changepage_login(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/LoginPage.aspx");
        }
    }
}