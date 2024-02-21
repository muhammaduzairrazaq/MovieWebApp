using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Spooky.AdminBlock
{
    public partial class AddMovies : System.Web.UI.Page
    {
        int gid = -1;
        string mname, mdis, mdate, mwatchtime, mrating, mposter, mlink;
        string query;
        string show;
        ConnectDataBase dataBase = new ConnectDataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["useremail"] == null)
            //{
            //    Response.Redirect("~/frontpage/Front page.aspx");
            //}

            //else
            //{
                DropDownList1.Items.Add("Action Movies");
                DropDownList1.Items.Add("Commedy Movies");
                DropDownList1.Items.Add("Crime Movies");
                DropDownList1.Items.Add("Horror Movies");
                DropDownList1.Items.Add("Science Fiction Movies");
            //}


        }

       

        protected void Button9_Click(object sender, EventArgs e)
        {

            mname = TextBox2.Text.ToString();
            mdis = TextBox3.Text.ToString();
            mdate=TextBox4.Text.ToString();
            mwatchtime = TextBox5.Text.ToString();
            mrating = TextBox6.Text.ToString();
            mposter = TextBox7.Text.ToString();
            mlink= TextBox8.Text.ToString();

            if (DropDownList1.SelectedIndex == 0)
            {
                gid = 1;
            }
            if (DropDownList1.SelectedIndex == 1)
            {
                gid = 2;
            }
            if (DropDownList1.SelectedIndex == 2)
            {
                gid = 3;
            }
            if (DropDownList1.SelectedIndex == 3)
            {
                gid = 4;
            }
            if (DropDownList1.SelectedIndex == 4)
            {
                gid = 5;
            }

            if ((mname == "") || (mdis == "") || (mdate == "") || (mwatchtime == "") || (mrating == "") || (mposter == "") || (mlink == "") || (gid==-1) )
            {
                show = "<script>";
                show += "alert('Please enter all details!')";
                show += "</script>";

                alrt.InnerHtml = show;
            }

            else
            {

                query = "INSERT INTO MOVIES VALUES('" + mname + "','" + mdis + "','" + mdate + "','" + mwatchtime + "','" + mrating + "'," + gid + ",'" + mposter + "','" + mlink + "','NOTSAVED');\r\n";


                dataBase.addmovies(query);

            }
        
        }
    }
}