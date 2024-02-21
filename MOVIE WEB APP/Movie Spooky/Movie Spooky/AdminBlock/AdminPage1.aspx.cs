using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Movie_Spooky.ConnectDataBase;
namespace Movie_Spooky
{
    public partial class AdminPage1 : System.Web.UI.Page
    {
        ConnectDataBase obj = new ConnectDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("~/frontpage/Front page.aspx");
            }

            else
            {
                SqlCommand cmd = obj.create_command("getmoviedetails");
                string html = obj.read_command(cmd);
                tablebody.InnerHtml = html;
            }
        }
    }
}