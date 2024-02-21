using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Spooky.UserBlock
{
   
    public partial class WatchLater : System.Web.UI.Page
    {

        ConnectDataBase dataBase = new ConnectDataBase();
        public string html;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("~/frontpage/Front page.aspx");
            }

            else
            {
                html = dataBase.readwatchlatermovies();
                watchlater.InnerHtml = html;

            }
        }
    }
}