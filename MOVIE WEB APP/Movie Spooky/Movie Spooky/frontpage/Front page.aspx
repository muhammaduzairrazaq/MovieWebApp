<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Front page.aspx.cs" Inherits="Movie_Spooky.Front_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="frontpagestylesheet.css" rel="stylesheet" />
    <link href="/staticimages/bh.png" rel="icon"/>
    <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
</head>
<body>
  
    <form id="form1" runat="server">
        <div class="bkimg">
           <div >
             
          
               <h1 class="text1">Watch Unlimited <br /> Movies, Tv shows and more <br /> on <br /> Black Hole</h1>
                <h2 class="text2">If you are already our member<br />
                <asp:Button ID="Button2" class="getstarted" runat="server" Text="Get Started" OnClick="changepage_login" />  

                    </h2>
               <br />
                <h2 class="text2">If you are a new user<br />
               
                    <asp:Button ID="Button1" class="getstarted" runat="server" Text="Sign Up" OnClick="changepage" />  
                    </h2>
                
           </div>
        </div> <!-- bkimg end -->
       <div class="text3" style="width:100%; height:auto;text-align:center;">

          <lord-icon
    src="https://cdn.lordicon.com/rejvphwu.json"
    trigger="hover"
    style="width:250px;height:250px">
</lord-icon>
            
          
           <h2>Enjoy on your TV</h2>
           <br />
           <h3>Watch on Smart TVs, Playstation, Xbox,<br /> Chromecast, Apple TV, Blu-ray players,<br /> and more.</h3>
           
       </div>

        <div class="text3" style="width:100%; height:auto;text-align:center;">
            <lord-icon
    src="https://cdn.lordicon.com/ehexapks.json"
    trigger="hover"
    style="width:250px;height:250px">
</lord-icon>
            <h2>Download your shows to <br />watch offline.</h2>
            <br />
            <h3>Save your favorites easily and always have<br /> something to watch.</h3>

        </div>

         <div class="text3" style="width:100%; height:auto;text-align:center;">
             <lord-icon
    src="https://cdn.lordicon.com/gjyysfxi.json"
    trigger="hover"
    style="width:250px;height:250px">
</lord-icon>
            <h2>Enjoy movies with<br />your friends.</h2>
             <br />
            <h3>Experience online cinema.</h3>

        </div>
        <footer>
            <div class="text4">
                <ul>
                    <li><a href="#">Questions? Contact us.</a></li>
                    <li><a href="#">Account</a></li>
                    <li><a href="#">Investor Relations</a></li>
                    <li><a href="#">Ways to Watch</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Corporate Information</a></li>
                    <li><a href="#">Speed Test</a></li>
                    <li><a href="#">Only on Black Hole</a></li>
                </ul>

            </div>
           
           <div class="copyright">
               <p>&copy Black Hole All rights are reserved</p>
           </div>
        </footer>
    </form>
</body>
</html>
