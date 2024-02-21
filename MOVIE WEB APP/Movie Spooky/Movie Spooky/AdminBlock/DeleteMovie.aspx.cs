using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Spooky.AdminBlock
{
    public partial class DeleteMovie : System.Web.UI.Page
    {
        ConnectDataBase dataBase = new ConnectDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("~/frontpage/Front page.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string mid = Request.QueryString["movieid"].ToString();

            dataBase.deletemovie(mid);

           
          Response.Redirect("~/AdminBlock/ManageMovies.aspx");



        }
    }
}