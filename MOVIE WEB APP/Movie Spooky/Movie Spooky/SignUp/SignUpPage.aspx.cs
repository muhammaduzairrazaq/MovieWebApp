using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using Movie_Spooky.BackendCode;

namespace Movie_Spooky
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        public string verificationcode="";
        public string script = "";
        public string iputa = "";
        public string iputb = "";


        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            iputa = input1.Value;
            iputb= input2.Value; 

            if (iputa=="" || iputb=="")
            {
                script += "<script>";
                script += "alert('Please Enter Data!')";
                script += "</script>";
                scripthere.InnerHtml = script;
            }

            else {

                string key = GenerateKeys.generate_key(16); 
                string encrypted_password = Encrypt_Decrypt.Encrypt(key,iputb);


            Random random = new Random();
             verificationcode = random.Next(1001,5001).ToString();

                // making sql connection;
            ConnectDataBase obj = new ConnectDataBase();

            obj.inserttosql(input1.Value,encrypted_password,verificationcode,key);



            sendcode();


            Response.Redirect("EmailVerification.aspx?emailid="+input1.Value+"&password="+verificationcode+"");
            input1.Value= "";
            input2.Value = "";
        }

           void sendcode()
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("verifyblackhole@gmail.com", "jbbwnsnymcwdvesm");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Black Hole";
                msg.Body = "Hey! Email from Black Hole" + " your verification code is " + verificationcode;
                string toemail = input1.Value;
                msg.To.Add(toemail);
                string fromemail = "verifyblackhole@gmail.com";
                msg.From = new MailAddress(fromemail);

                try
                {
                    smtp.Send(msg);
                }
                catch (Exception ex)
                {
                    throw ex;
                }


            }
        
        }
    }
}