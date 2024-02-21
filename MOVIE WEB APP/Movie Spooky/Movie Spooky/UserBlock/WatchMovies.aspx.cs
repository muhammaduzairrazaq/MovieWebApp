using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Spooky.UserBlock
{
    public partial class WatchMovies : System.Web.UI.Page
    {
        public string html;
        public string takelink;
        public string html1;
        public string html2;

        public string alert;

        ConnectDataBase database=new ConnectDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userid"] == null)
            {
                Response.Redirect("~/frontpage/Front page.aspx");
            }

            else
            {
                takelink = Request.QueryString["watchlink"];
                html = "<iframe width=\"100%\" height=\"500px\" src=\"https://" + takelink + "\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"allow\"></iframe>\r\n";
                vedio.InnerHtml = html;

                html1 += Request.QueryString["moviename"] + " | ";
                html1 += Request.QueryString["releasedate"] + " | ";
                html1 += Request.QueryString["duration"] + " | ";
                html1 += Request.QueryString["rating"];

                html2 += Request.QueryString["discription"];

                des1.InnerHtml = html1;
                des2.InnerHtml = html2;

            }

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            alert=database.add_later(Request.QueryString["movieid"].ToString());
            foralert.InnerHtml= alert;
        }

        protected void Remove_Click(object sender, EventArgs e)
        {
            alert=database.remove_later(Request.QueryString["movieid"].ToString());
            foralert.InnerHtml = alert;
        }
    }
}