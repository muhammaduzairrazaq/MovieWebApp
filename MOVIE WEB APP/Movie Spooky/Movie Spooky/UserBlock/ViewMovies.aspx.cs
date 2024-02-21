using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Spooky.UserBlock
{
    public partial class ViewMovies : System.Web.UI.Page
    {
        
        ConnectDataBase database = new ConnectDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userid"] == null)
            {
                Response.Redirect("~/frontpage/Front page.aspx");
            }

            else
            {

                string html = database.readActionMovies();
                Actionmovies.InnerHtml = html;

                //string html2 = Request.QueryString["useremail"].ToString();
                //emailhere.InnerHtml = "<a href=\"#\">"+html2+"</a>";



                html = database.readcomedymovies();
                Comedymovies.InnerHtml = html;

                html = database.readcrimemovies();
                Crimemovies.InnerHtml = html;

                html = database.readhorrormovies();
                Horrormovies.InnerHtml = html;

                html = database.readscifimovies();
                Scificmovies.InnerHtml = html;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("/UserBlock/WatchMovies.aspx");
        }

        protected void Button100_Click(object sender, EventArgs e)
        {
            Actionmovies.Visible = true;
            Comedymovies.Visible = false;
            Crimemovies.Visible = false;
            Horrormovies.Visible = false;
            Scificmovies.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Actionmovies.Visible = false;
            Comedymovies.Visible = true;
            Crimemovies.Visible = false;
            Horrormovies.Visible = false;
            Scificmovies.Visible = false;


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Actionmovies.Visible = false;
            Comedymovies.Visible = false;
            Crimemovies.Visible = true;
            Horrormovies.Visible = false;
            Scificmovies.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Actionmovies.Visible = false;
            Comedymovies.Visible = false;
            Crimemovies.Visible = false;
            Horrormovies.Visible = true;
            Scificmovies.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Actionmovies.Visible = false;
            Comedymovies.Visible = false;
            Crimemovies.Visible = false;
            Horrormovies.Visible = false;
            Scificmovies.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Actionmovies.Visible = true;
            Comedymovies.Visible = true;
            Crimemovies.Visible = true;
            Horrormovies.Visible = true;
            Scificmovies.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Session["userid"] = null;
        }
    }
}