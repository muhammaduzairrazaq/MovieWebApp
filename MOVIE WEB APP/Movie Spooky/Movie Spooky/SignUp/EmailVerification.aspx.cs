using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.CodeDom;

namespace Movie_Spooky.SignUp
{
    public partial class EmailVerification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email;
           ConnectDataBase obj= new ConnectDataBase();
           bool  check= obj.readforcodeverification(Request.QueryString["emailid"],TextBox1.Text);
            if (check==true) 
            {
                email = Request.QueryString["emailid"].ToString();
                obj.changestatus(email);

                Session["userid"] = email;
                //Response.Redirect("~/UserBlock/ViewMovies.aspx?useremail=" + email + "");

                Response.Redirect("~/UserBlock/ViewMovies.aspx");


            }

           
            TextBox1.Text = "";
           

        }
    }
}