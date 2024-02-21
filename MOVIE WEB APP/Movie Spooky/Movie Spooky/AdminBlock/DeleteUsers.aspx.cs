using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Spooky.AdminBlock
{
    public partial class DeleteUsers : System.Web.UI.Page
    {
        ConnectDataBase database = new ConnectDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("~/frontpage/Front page.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string mid = Request.QueryString["useremail"].ToString();

            database.deleteuser(mid);


            Response.Redirect("~/AdminBlock/AdminPage1.aspx");

        }
    }
}