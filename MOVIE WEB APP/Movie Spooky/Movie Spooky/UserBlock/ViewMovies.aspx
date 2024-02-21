<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewMovies.aspx.cs" Inherits="Movie_Spooky.UserBlock.ViewMovies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="/staticimages/bh.png" rel="icon"/>
    <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
     <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&family=Yeon+Sung&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"/>
    <link href="ViewMoviesStyleSheet.css" rel="stylesheet" />
    <link href="../AdminBlock/ManageMovies.css" rel="stylesheet" />
    <style>
          .mbuton{
             
            height:40px;
            width:50px;
            border-radius:10px;
            font-family:sans-serif;
            text-align:center;
            background-color:rgba(0, 0,0,0.5);
            color:white;
            font-weight:bold;
            margin-top:5px;
            font-size:18px;
            width:90%
        }
          
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <header>
           <nav  >
                <div style="width:auto;height:70px;padding-right:18px;padding:10px;border-bottom:1px solid black;">
                    <ul id="navbar">
                    <li style="color:red;float:left;color:red;font-size:40px;margin-top:-7px;font-weight:bold;margin-left:-15px;">Black Hole</li>
                  
                







<%--                        <li style="float:right;"><a href="#"><lord-icon
    src="https://cdn.lordicon.com/hbvyhtse.json"
    trigger="hover"
    colors="primary:#e83a30"
    style="width:50px;height:50px">
</lord-icon>



        </a></li>--%>



                        <li style="float:right"><a href="../AdminBlock/HelpPage.aspx"><lord-icon
    src="https://cdn.lordicon.com/nocvdjmh.json"
    trigger="hover"
    colors="primary:#e83a30"
    style="width:50px;height:50px">
</lord-icon></a></li>

        <li style="float:right;margin-right:30px;"><a href="../UserBlock/WatchLater.aspx"><lord-icon
    src="https://cdn.lordicon.com/mrdiiocb.json"
    trigger="hover"
    colors="primary:#e83a30"
    style="width:50px;height:50px">
</lord-icon></a></li>


                        
  <li style="float:right;margin-right:30px;" ><div class="dropdown">
  <button class="dropbtn" style="background-color:rgb(29, 28, 34);border:1px solid rgb(29, 28, 34);"><lord-icon
    src="https://cdn.lordicon.com/hbvyhtse.json"
    trigger="hover"
    colors="primary:#e83a30"
    style="width:50px;height:50px;margin-top:-3px;">
</lord-icon></button>
  <div  class="dropdown-content" style="background-color:rgb(29, 28, 34);" >
<%--   <p id="emailhere" runat="server"> </p>--%>
      <asp:Button ID="Button7" runat="server" Text="Log Out" style="background-color:white;color:black;font-family:sans-serif; font-size:15px" class="mbuton" OnClick="Button7_Click" />
    </div>
</div></li>

                    </ul>


                        </div>
           </nav>
       </header>

        <main style="margin-top:40px;">
            
            <ul class="notnav">
            <li style="margin-left:-10px;">Choose Genre</li>
            <li style="float:right;margin-right:28px;">Search Movies</li>
           </ul>
            
<div class="dropdown">
  <a href="#" class="dropbtn"><lord-icon
    src="https://cdn.lordicon.com/albqovim.json"
    trigger="hover"
    colors="primary:#e83a30"
    style="width:50px;height:50px;">
</lord-icon></a>
  <div class="dropdown-content" style="width:200px;">
    <asp:Button ID="Button6" class="buttons" runat="server" Text="All Movies" OnClick="Button6_Click" />
                    <asp:Button ID="Button1" class="buttons" runat="server" Text="Action Movies" OnClick="Button100_Click" />
                    <asp:Button ID="Button2" class="buttons" runat="server" Text="Comedy Movies" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" class="buttons" runat="server" Text="Crime Movies" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" class="buttons" runat="server" Text="Horror Movies" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" class="buttons" runat="server" Text="Science Fiction Movies" OnClick="Button5_Click" />

  </div>

</div>



<!-- search code here  -->


<div id="searchbar">
    <button class="ibutf"><lord-icon
    src="https://cdn.lordicon.com/zniqnylq.json"
    trigger="hover"
    colors="primary:#242424,secondary:#66eece"
    style="width:50px;height:50px">
</lord-icon></button>

  <input id="searchbarf" type="text" placeholder="Search" onkeyup="searchme()"/>
    </div>






           <div id="Actionmovies" runat="server">
              <%-- <p class="tags" >Action Movies</p>--%>
<%--                <div class="movieposters">
                    <image class="movieimage"src="/BlackHole/ironman1.jpg"></image>
                    <h1>Iron Man</h1>
                    <p>May 2, 2008 | Robert Downey Junior | Action | 2h 6m | 7.9 IMDB</p>
                    <br />
                    <button class="butoon" style="">
                        <i class="uil uil-thumbs-up" style="color:white;"></i>
                    </button>
                    <span>5</span>

                    <button class="butoon" style="margin-left:20px">
                        <i class="uil uil-thumbs-down" style="color:white;"></i>
                    </button>
                    <span>1</span>
                   
                    <button class="butoonn" style="margin-left:17px;">
                      Watch Later
                    </button>
                    <button class="butoonn" style="">
                    Watch Now
                    </button>

                   </div>--%>

               
            </div>



            
            <div runat="server" id="Comedymovies">
                <%--<p class="tags" >Comedy Movies</p>   --%>
            </div>









            <div runat="server" id="Crimemovies">
<%--                <p class="tags">Crime Movies</p>--%>
            </div>







           
            <div runat="server" id="Horrormovies">
<%--             <p class="tags" >Horror Movies</p>--%>

            </div>








            
            <div runat="server" id="Scificmovies">
<%--                <p class="tags">Science Fiction Movies</p>--%>
            </div>







        </main>

        <footer>

        </footer>
    </form>
</body>
</html>
