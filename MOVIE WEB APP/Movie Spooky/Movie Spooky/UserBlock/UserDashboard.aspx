<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="Movie_Spooky.UserBlock.UserDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="/staticimages/bh.png" rel="icon"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&family=Yeon+Sung&display=swap" rel="stylesheet"/>
    <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
    <link href="../AdminBlock/AdminDashBoard.css" rel="stylesheet" />
    <link href="UserDashboardStyle.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav>
            
                <ul id="navbar">
                    <li style="float:left;margin-top:7px"><a href="#">Black Hole</a></li>
                    <li><image  class="profileimage"src="/staticimages/profile.jpeg" ></image></li>
                   
                </ul>
              <div class="dropdown">
  <button class="dropbtn"><lord-icon
    src="https://cdn.lordicon.com/albqovim.json"
    trigger="hover"
    colors="primary:#e83a30"
    style="width:50px;height:50px;">
</lord-icon></button>
  <div  class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
                <br />
                <hr style="width:100%;"/>


            </nav>
        </header>
         

        <main style="display:flex;justify-content:center;align-items:center;">

            <div class="containerf" >
                
                <div class="child1f">

                    <lord-icon
    src="https://cdn.lordicon.com/ofwpzftr.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;">
</lord-icon>
                    <br />
               <p class="item">View Movies</p>
                    <br />
                    <asp:Button ID="Button1" class="itembutf" runat="server" Text="Get Started" onclick="changepage"/>
                   
                </div>

                <div class="child1f">
<lord-icon
    src="https://cdn.lordicon.com/ynwbvguu.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;">
</lord-icon><br />
               <p class="item">Watch Later</p><br />
                    <button  class="itembutf">Get Started</button>
                </div>


            <div class="child1f">
                
            <lord-icon
    src="https://cdn.lordicon.com/jsoeastu.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;">
</lord-icon><br />
               <p class="item">Manage 
                   
                   Subscription</p><br />
                    <button class="itembutf">Get Started</button>
                </div>

            </div>


        </main>

        <footer>

        </footer>
    </form>
</body>
</html>
