using Microsoft.SqlServer.Server;
using Movie_Spooky.BackendCode;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Management;

using System.Configuration;

namespace Movie_Spooky
{
    public class Connect_to_Database
    {

    }


    public class ConnectDataBase
    {
        public string constring;
        public string email, pass;
        public string encryp_pass, key;
        public string decrypt_pass;
        public string foralert;
        public string user;

        public string total;

        public static string constringuser = ConfigurationManager.ConnectionStrings["conuser"].ConnectionString;
        public static string constringmovie = ConfigurationManager.ConnectionStrings["conmovies"].ConnectionString;

        public SqlConnection con;



        public SqlCommand create_command (string query)
        {
            SqlCommand cmd = new SqlCommand ();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = query;
            return cmd;
        }

        public void inserttosql(string email,string password,string verificationcode,string key)
        {
            string query = "INSERT INTO USERACCOUNT (EMAIL_ID,USER_PASSWORD,VERIFICATION_CODE,PASSWORD_KEY) VALUES('"+email+"','"+password+"','"+verificationcode+"','"+key+"')";
            //constring = "Data Source=.;Initial Catalog=MovieappUserManagement;Integrated Security=True";
            //SqlConnection conn = new SqlConnection(constring);
            //conn.Open ();

            con = new SqlConnection(constringuser);
            con.Open();
            SqlDataAdapter adapter  = new SqlDataAdapter(query,con);
            DataTable dt=new DataTable();
            adapter.Fill (dt);


        }

        public  bool readsqlforLogin(string email,string password)
        {
            //constring = "Data Source=.;Initial Catalog=MovieappUserManagement;Integrated Security=True";
            con = new SqlConnection(constringuser);
            
            SqlCommand cmd= new SqlCommand ("SELECT USER_PASSWORD,PASSWORD_KEY FROM USERACCOUNT WHERE EMAIL_ID='"+email+"'",con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader ();

                if(reader.HasRows)
                {
                    while(reader.Read())
                    {
                        encryp_pass = reader[0].ToString();
                        key = reader[1].ToString();
                    }

                    decrypt_pass=Encrypt_Decrypt.DecryptString(key, encryp_pass);

                    if(password==decrypt_pass)
                    {
                        return true;
                    }

                  

                    
                }
            }

            catch(Exception ex)
            {
                throw ex;
            }

            finally { con.Close (); }

            return false;
        
        }


        public void changestatus (string emailid)
        {
            //constring = "Data Source=.;Initial Catalog=MovieappUserManagement;Integrated Security=True";
            con = new SqlConnection(constringuser);
            
            SqlCommand cmd = new SqlCommand("UPDATE USERACCOUNT SET VERIFICATION_STATUS='VERIFIED' WHERE EMAIL_ID='" + emailid + "'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

        }

        public bool finduser(string emailid)
        {
            //constring = "Data Source=.;Initial Catalog=MovieappUserManagement;Integrated Security=True";

            con = new SqlConnection(constringuser);
            
            SqlCommand cmd = new SqlCommand("SELECT ACCOUNT_TYPE FROM USERACCOUNT WHERE EMAIL_ID='" + emailid + "'", con);
            con.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader();

                if(reader.HasRows)
                {
                    while (reader.Read())
                    {
                        user = reader[0].ToString();
                    }
                }

                if (user=="ADMIN")
                {
                    return true;
                }

                if(user=="USER")
                {
                    return false;
                }
            }

            catch(Exception ex) { throw ex; }

            finally { con.Close (); }

            return false;

        }


        public bool readforcodeverification(string em,string code)
        {
            //constring = "Data Source=.;Initial Catalog=MovieappUserManagement;Integrated Security=True";
            con = new SqlConnection(constringuser);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT EMAIL_ID,VERIFICATION_CODE FROM USERACCOUNT WHERE EMAIL_ID='"+em+"'", con);
          

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();



                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        email = reader[0].ToString();
                        pass = reader[1].ToString();

                    }

                    if(email==em && pass == code)
                    {
                        return true;
                    }
                    
                }
            }

            catch (Exception ex)
            {
                throw ex;
                
            }
            finally
            {
                con.Close();
               
            }

            return false;

        }


        public string add_later(string movieid)
        {
            //constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("UPDATE MOVIES SET WATCH_LATER='SAVED' WHERE MID='"+movieid+"'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            foralert += "<script>";
            foralert += "alert('Movie added to watch later!')";
            foralert += "</script>";

            return foralert;

        }
        public string remove_later(string movieid)
        {
          //  constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("UPDATE MOVIES SET WATCH_LATER='NOTSAVED' WHERE MID='" + movieid + "'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            foralert += "<script>";
            foralert += "alert('Movie removed from watch later!')";
            foralert += "</script>";

            return foralert;
        }

        public void deletemovie(string movieid)
        {
           // constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("DELETE FROM MOVIES WHERE MID='" + movieid + "'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            foralert += "<script>";
            foralert += "alert('Movie removed from watch later!')";
            foralert += "</script>";

          
        }


        public void deleteuser(string movieid)
        {
        //    constring = "Data Source=.;Initial Catalog=MovieappUserManagement;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringuser);
            SqlCommand cmd = new SqlCommand("\r\nDELETE FROM USERACCOUNT WHERE EMAIL_ID='" + movieid + "'", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
            }

            catch (Exception ex)
            {
                throw ex;
            }
          

        }



        public void addmovies (string query)
        {
//constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();

            }

            catch(Exception ex ) { throw ex; }

            finally { con.Close(); }

        }

       
        public string countmovies()
        {
           
          //  constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("\r\nSELECT COUNT(MOVIENAME)\r\nFROM MOVIES", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();

                if(reader.HasRows)
                {
                    while(reader.Read()) 
                    {

                      total = reader[0].ToString();
                    }

                    return total;
                }

            }

            catch (Exception ex) { throw ex; }

            finally { con.Close(); }

            return total;

        }

        public string pactionmovies(int totalmo)
        {
            string ahtml;
            string no;
            int num;
            double percentage;
           // constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT COUNT(MOVIENAME)\r\nFROM MOVIES WHERE GID=1;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        no = reader[0].ToString();
                        num = Int32.Parse(no);
                        percentage = ((num*100)/totalmo);
                       

                        ahtml = "<div runat=\"server\" id=\"actionmoviebar\" style=\"width:"+percentage+"%\"></div>\r\n";
                        return ahtml;


                    }

                   
                    
                    
                }

            }

            catch (Exception ex) { throw ex; }

            finally { con.Close(); }

            return "";

        }

        public string pcommedymovies(int totalmo)
        {
            string ahtml;
            string no;
            int num;
            double percentage;
        //    constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT COUNT(MOVIENAME)\r\nFROM MOVIES WHERE GID=2;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        no = reader[0].ToString();
                        num = Int32.Parse(no);
                        percentage = ((num * 100) / totalmo);


                        ahtml = "<div runat=\"server\" id=\"actionmoviebar\" style=\"width:" + percentage + "%\"></div>\r\n";
                        return ahtml;


                    }




                }

            }

            catch (Exception ex) { throw ex; }

            finally { con.Close(); }

            return "";

        }


        public string pcrimemovies(int totalmo)
        {
            string ahtml;
            string no;
            int num;
            double percentage;
          //  constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT COUNT(MOVIENAME)\r\nFROM MOVIES WHERE GID=3;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        no = reader[0].ToString();
                        num = Int32.Parse(no);
                        percentage = ((num * 100) / totalmo);


                        ahtml = "<div runat=\"server\" id=\"actionmoviebar\" style=\"width:" + percentage + "%\"></div>\r\n";
                        return ahtml;


                    }




                }

            }

            catch (Exception ex) { throw ex; }

            finally { con.Close(); }

            return "";

        }


        public string phorrormovies(int totalmo)
        {
            string ahtml;
            string no;
            int num;
            double percentage;
           // constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT COUNT(MOVIENAME)\r\nFROM MOVIES WHERE GID=4;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        no = reader[0].ToString();
                        num = Int32.Parse(no);
                        percentage = ((num * 100) / totalmo);


                        ahtml = "<div runat=\"server\" id=\"actionmoviebar\" style=\"width:" + percentage + "%\"></div>\r\n";
                        return ahtml;


                    }




                }

            }

            catch (Exception ex) { throw ex; }

            finally { con.Close(); }

            return "";

        }



        public string pscifimovies(int totalmo)
        {
            string ahtml;
            string no;
            int num;
            double percentage;
           // constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT COUNT(MOVIENAME)\r\nFROM MOVIES WHERE GID=5;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        no = reader[0].ToString();
                        num = Int32.Parse(no);
                        percentage = ((num * 100) / totalmo);


                        ahtml = "<div runat=\"server\" id=\"actionmoviebar\" style=\"width:" + percentage + "%\"></div>\r\n";
                        return ahtml;


                    }




                }

            }

            catch (Exception ex) { throw ex; }

            finally { con.Close(); }

            return "";

        }







        public string readActionMovies()
        {
            string html = "";
           // constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE GID=1;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if(reader.HasRows)
                {
                    html = "<p class=\"tags\" >Action Movies</p>";
                    while(reader.Read())
                    {
                        html += "  <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/"+reader[0].ToString()+"\"></image>";
                        html += "<h1>" + reader[1].ToString() +"</h1>";
                        html += "<p>" + reader[2] +" | " + reader[3] +" | " + reader[4] +"</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/UserBlock/WatchMovies.aspx?watchlink=" + reader[5].ToString() + " &moviename=" + reader[1].ToString() + " &releasedate=" + reader[2].ToString() + " &duration=" + reader[3].ToString() + "&rating=" + reader[4].ToString() + "&discription=" + reader[6].ToString() + "&movieid=" + reader[7] +"\">";
                        html += "Watch Now";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch(Exception ex) {

                throw ex;
            }

            finally
            {
                con.Close();    
            }
            return html;
        }

        public string readcomedymovies()
        {
            string html = "";
         //   constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE GID=2;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    html = "<p class=\"tags\" >Commedy Movies</p>";
                    while (reader.Read())
                    {
                        html += "  <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/" + reader[0].ToString() + "\"></image>";
                        html += "<h1>" + reader[1].ToString() + "</h1>";
                        html += "<p>" + reader[2] + " | " + reader[3] + " | " + reader[4] + "</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/UserBlock/WatchMovies.aspx?watchlink=" + reader[5].ToString() + " &moviename=" + reader[1].ToString() + " &releasedate=" + reader[2].ToString() + " &duration=" + reader[3].ToString() + "&rating=" + reader[4].ToString() + "&discription=" + reader[6].ToString() + "&movieid=" + reader[7] + "\">";
                        html += "Watch Now";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                con.Close();
            }
            return html;
        }


        public string readcrimemovies()
        {
            string html = "";
          //  constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE GID=3;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    html = "<p class=\"tags\" >Crime Movies</p>";
                    while (reader.Read())
                    {
                        html += "  <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/" + reader[0].ToString() + "\"></image>";
                        html += "<h1>" + reader[1].ToString() + "</h1>";
                        html += "<p>" + reader[2] + " | " + reader[3] + " | " + reader[4] + "</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/UserBlock/WatchMovies.aspx?watchlink=" + reader[5].ToString() + " &moviename=" + reader[1].ToString() + " &releasedate=" + reader[2].ToString() + " &duration=" + reader[3].ToString() + "&rating=" + reader[4].ToString() + "&discription=" + reader[6].ToString() + "&movieid=" + reader[7] + "\">";
                        html += "Watch Now";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                con.Close();
            }
            return html;
        }

        public string readhorrormovies()
        {
            string html = "";
         //   constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE GID=4;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    html = "<p class=\"tags\" >Horror Movies</p>";
                    while (reader.Read())
                    {
                        html += "  <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/" + reader[0].ToString() + "\"></image>";
                        html += "<h1>" + reader[1].ToString() + "</h1>";
                        html += "<p>" + reader[2] + " | " + reader[3] + " | " + reader[4] + "</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/UserBlock/WatchMovies.aspx?watchlink=" + reader[5].ToString() + " &moviename=" + reader[1].ToString() + " &releasedate=" + reader[2].ToString() + " &duration=" + reader[3].ToString() + "&rating=" + reader[4].ToString() + "&discription=" + reader[6].ToString() + "&movieid=" + reader[7] + "\">";
                        html += "Watch Now";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                con.Close();
            }
            return html;
        }

        public string readscifimovies()
        {
            string html = "";
        //    constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE GID=5;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    html = "<p class=\"tags\" >Science Fiction Movies</p>";
                    while (reader.Read())
                    {
                        html += "  <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/" + reader[0].ToString() + "\"></image>";
                        html += "<h1>" + reader[1].ToString() + "</h1>";
                        html += "<p>" + reader[2] + " | " + reader[3] + " | " + reader[4] + "</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/UserBlock/WatchMovies.aspx?watchlink=" + reader[5].ToString() + " &moviename=" + reader[1].ToString() + " &releasedate=" + reader[2].ToString() + " &duration=" + reader[3].ToString() + "&rating=" + reader[4].ToString() + "&discription=" + reader[6].ToString() + "&movieid=" + reader[7] + "\">";
                        html += "Watch Now";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                con.Close();
            }
            return html;
        }


        public string readActionMovies2()
        {
            string html = "";
          //  constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE GID=1;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    html += "   <p class=\"tags\">Action Movies</p> ";

                    while (reader.Read())
                    {
                        html += " <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/" + reader[0].ToString() + "\"></image>";
                        html += "<h1>" + reader[1].ToString() + "</h1>";
                        html += "<p>" + reader[2] + " | " + reader[3] + " | " + reader[4] + "</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/AdminBlock/DeleteMovie.aspx?movieid=" + reader[7] +  "\">";
                        html += "Delete Movie";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                con.Close();
            }
            return html;
        }

        public string readcomedymovies2()
        {
            string html = "";
           // constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE GID=2;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    html += "  <p class=\"tags\" >Comedy Movies</p>    ";

                    while (reader.Read())
                    {
                        html += " <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/" + reader[0].ToString() + "\"></image>";
                        html += "<h1>" + reader[1].ToString() + "</h1>";
                        html += "<p>" + reader[2] + " | " + reader[3] + " | " + reader[4] + "</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/AdminBlock/DeleteMovie.aspx?movieid=" + reader[7] + "\">";
                        html += "Delete Movie";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                con.Close();
            }
            return html;
        }


        public string readcrimemovies2()
        {
            string html = "";
           // constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE GID=3;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    html += "<p class=\"tags\">Crime Movies</p>";

                    while (reader.Read())
                    {
                        html += " <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/" + reader[0].ToString() + "\"></image>";
                        html += "<h1>" + reader[1].ToString() + "</h1>";
                        html += "<p>" + reader[2] + " | " + reader[3] + " | " + reader[4] + "</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/AdminBlock/DeleteMovie.aspx?movieid=" + reader[7] + "\">";
                        html += "Delete Movie";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                con.Close();
            }
            return html;
        }

        public string readhorrormovies2()
        {
            string html = "";
           // constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE GID=4;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    html += "<p class=\"tags\">Horror Movies</p>";

                    while (reader.Read())
                    {
                        html += " <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/" + reader[0].ToString() + "\"></image>";
                        html += "<h1>" + reader[1].ToString() + "</h1>";
                        html += "<p>" + reader[2] + " | " + reader[3] + " | " + reader[4] + "</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/AdminBlock/DeleteMovie.aspx?movieid=" + reader[7] + "\">";
                        html += "Delete Movie";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                con.Close();
            }
            return html;
        }

        public string readscifimovies2()
        {
            string html = "";
         //   constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE GID=5;", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    html += "<p class=\"tags\">Science Fiction Movies</p>";

                    while (reader.Read())
                    {
                        html += " <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/" + reader[0].ToString() + "\"></image>";
                        html += "<h1>" + reader[1].ToString() + "</h1>";
                        html += "<p>" + reader[2] + " | " + reader[3] + " | " + reader[4] + "</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/AdminBlock/DeleteMovie.aspx?movieid=" + reader[7] + "\">";
                        html += "Delete Movie";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                con.Close();
            }
            return html;
        }

        public string readwatchlatermovies()
        {
            string html = "";
          //  constring = "Data Source=.;Initial Catalog=MOVIES;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringmovie);
            SqlCommand cmd = new SqlCommand("SELECT MOVIE_POSTER,MOVIENAME,RELEASEDATE,DURATION,RATING,MOVIE_LINK,MOVIEDESCRIPTION,MID FROM MOVIES WHERE WATCH_LATER='SAVED';", con);
            con.Open();

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        html += "  <div class=\"movieposters\">";
                        html += "<image class=\"movieimage\"src=\"/BlackHole/" + reader[0].ToString() + "\"></image>";
                        html += "<h1>" + reader[1].ToString() + "</h1>";
                        html += "<p>" + reader[2] + " | " + reader[3] + " | " + reader[4] + "</p>";
                        html += " <br />";
                        html += "<div class=\"anchor\">";
                        html += "<a href=\"/UserBlock/WatchMovies.aspx?watchlink=" + reader[5].ToString() + " &moviename=" + reader[1].ToString() + " &releasedate=" + reader[2].ToString() + " &duration=" + reader[3].ToString() + "&rating=" + reader[4].ToString() + "&discription=" + reader[6].ToString() + "&movieid=" + reader[7] + "\">";
                        html += "Watch Now";
                        html += " </a>";
                        html += "</div>";
                        html += "</div>";
                    }

                    return html;
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                con.Close();
            }
            return html;
        }



















        public string read_command(SqlCommand cmd)
        {
         //   constring = "Data Source=.;Initial Catalog=MovieappUserManagement;Integrated Security=True";
            SqlConnection con = new SqlConnection(constringuser);
            cmd.Connection= con;
            string html = "";

            try
            {
                con.Open();
                SqlDataReader dt = cmd.ExecuteReader();

                if(dt.HasRows)
                {
                    while(dt.Read())
                    {
                        html += "<tr>";
                        html += "<td>" + dt[0].ToString() + "</td>";
                        html += "<td>" + dt[1].ToString() + "</td>";
                        html += "<td>" + dt[2].ToString() + "</td>";
                        html += "<td><a href=\"DeleteUsers.aspx?useremail=" + dt[0].ToString() +"\">\r\n<lord-icon\r\n    src=\"https://cdn.lordicon.com/tntmaygd.json\"\r\n    trigger=\"hover\"\r\n    style=\"width:50px;height:50px\"  colors=\"primary:#ffffff,secondary:#ffffff\"                >\r\n</lord-icon>\r\n    </a> </td>";
                        html += "</tr>";
                    }
                }
            }

            catch(Exception ex) 
            {
                throw ex;
            }
            finally
            {
                con.Close(); 
            }
            return html;
        }
    
    }

}