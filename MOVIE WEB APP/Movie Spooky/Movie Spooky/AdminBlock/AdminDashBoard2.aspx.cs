using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Spooky.AdminBlock
{
    public partial class AdminDashBoard2 : System.Web.UI.Page
    {
        ConnectDataBase dataBase= new ConnectDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("~/frontpage/Front page.aspx");
            }


            else
            {

                email.InnerHtml = "uzairrazzaq68@gmail.com";
            //email.InnerHtml = Session["userid"].ToString();
                int n = Int32.Parse(dataBase.countmovies());

                actionmovies.InnerHtml = dataBase.pactionmovies(n);
                commedymovies.InnerHtml = dataBase.pcommedymovies(n);
                crimemovies.InnerHtml = dataBase.pcrimemovies(n);
                horrormovies.InnerHtml = dataBase.phorrormovies(n);
                scifimovies.InnerHtml = dataBase.pscifimovies(n);
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminBlock/ManageMovies.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["userid"] = null;
        }
    }
}