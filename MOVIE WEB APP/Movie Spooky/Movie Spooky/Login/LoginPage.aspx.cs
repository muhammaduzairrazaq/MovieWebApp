using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Spooky.Login
{
    public partial class LoginPage : System.Web.UI.Page
    {
        public string iputa, iputb,script;
        ConnectDataBase dataBase= new ConnectDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void verifyuser(object sender, EventArgs e)
        {

            iputa = input1.Value;
            iputb = input2.Value;

            if (iputa == "" || iputb == "")
            {
                script += "<script>";
                script += "alert('Please Enter Data!')";
                script += "</script>";
                scripthere.InnerHtml = script;
            }

            else
            {
                bool flag=dataBase.readsqlforLogin(iputa, iputb);

                if (flag == true)
                {
                    Session["userid"] = iputa;
                    bool flags = dataBase.finduser(iputa);

                    if (flags == true) // means admin
                    {
                        
                        Response.Redirect("~/AdminBlock/AdminDashBoard2.aspx");
                    }

                    else
                    {
                        Response.Redirect("~/UserBlock/ViewMovies.aspx");
                    }
                }

                else
                {
                    script += "<script>";
                    script += "alert('Email or Password Invalid!')";
                    script += "</script>";
                    scripthere.InnerHtml = script;
                }
            }
        }
    }
}