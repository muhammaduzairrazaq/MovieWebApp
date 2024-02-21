<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WatchLater.aspx.cs" Inherits="Movie_Spooky.UserBlock.WatchLater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Black Hole</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <link href="~/staticimages/bh.png" rel="icon"/>
    <link href="ViewMoviesStyleSheet.css" rel="stylesheet" />
     <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>


    
</head>
   
<body>

    <style>

        #watchlater {
            height: auto;
            width: auto;
            margin: 10px;
            padding: 10px;
            margin-top: 90px;
            display: flex;
            flex-wrap: wrap;
            justify-content: left;
            gap: 37px;
            border-bottom: 2px solid gray;
        }

    </style>

    <form id="form1" runat="server">
        <header>
            <nav >
                <div>
                    <h1 style="text-align:center;color:red;font-size:40px;margin:0px;padding:0px;">Black Hole</h1>
                </div>
           </nav>
        </header>


          <main style="margin-top:40px;">
            
            <ul class="notnav">
            
            <li style="margin-left:-17px;">Search Movies</li>
           </ul>
   


<div id="searchbar" style="margin-left:-1px;margin-top:30px;margin-left:20px;">
    
    <button class="ibutf"><lord-icon
    src="https://cdn.lordicon.com/zniqnylq.json"
    trigger="hover"
    colors="primary:#242424,secondary:#66eece"
    style="width:50px;height:50px">
</lord-icon></button>

  <input id="searchbarf" type="text" placeholder="Search" onkeyup="searchme()"/>
    </div>

    <h2 style="margin-left:-1px;margin-left:22px;margin-top:48px;">Watch Later</h2>


   <div id="watchlater" runat="server" >




       </div>






        </main>

        <footer>

        </footer>
    </form>
</body>
</html>
