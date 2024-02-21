<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashBoard.aspx.cs" Inherits="Movie_Spooky.AdminDashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0 "/>
    <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap" rel="stylesheet"/>
    <link href="~/staticimages/bh.png" rel="icon"/>
    <link href="AdminDashBoard.css" rel="stylesheet" />

</head>


<body>
    <form id="form1" runat="server">
        <header>
            <nav>

                <ul class="dasboard">

                   <li><a class="stop" href="#"><lord-icon
    src="https://cdn.lordicon.com/tsnvgrkp.json"
    trigger="hover"
    style="width:70px;height:70px;">
</lord-icon><p style="margin-top:-50px; margin-left:70px;font-size:25px;padding:5px;">DashBoard</p>

                       </a></li>
                    <li><hr /></li>
                         
                    <li>
                        <a href="#">
                        <lord-icon
    src="https://cdn.lordicon.com/kxoxiwrf.json"
    trigger="hover"
    style="width:50px;height:50px;position:absolute;">
</lord-icon><p style="margin-top:1px; margin-left:60px;">Home</p>



                        </a>
                    </li>


                    <li>
                        <a href="#">
                        
                            <lord-icon
    src="https://cdn.lordicon.com/ljvjsnvh.json"
    trigger="hover"
    style="width:50px;height:50px">
</lord-icon><p style="margin-top:-33px; margin-left:60px;">Profile</p>


                        </a>
                    </li>

                     <li>
                         <a href="#">
                        <lord-icon
    src="https://cdn.lordicon.com/mjmrmyzg.json"
    trigger="hover"
    style="width:50px;height:50px">
</lord-icon><p style="margin-top:-33px; margin-left:60px;">Help</p>


                        </a>
                    </li>


                    <li>
                         <a href="#"><lord-icon
    src="https://cdn.lordicon.com/hcuxerst.json"
    trigger="hover"
    style="width:50px;height:50px">
</lord-icon>
                        <p style="margin-top:-33px; margin-left:60px;">Logout</p>


                        </a>
                    </li>


                </ul>
            </nav>
        </header>

        <main>

            <div class="container">
                
                <div class="child1">

                    <lord-icon
    src="https://cdn.lordicon.com/ofwpzftr.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;">
</lord-icon>
                    <br />
               <p class="item">View Movies</p>
                    <br />
                    <button class="itembut">Get Started</button>
                </div>

                <div class="child1">
<lord-icon
    src="https://cdn.lordicon.com/ynwbvguu.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;">
</lord-icon><br />
               <p class="item">Add Movies</p><br />
                    <button class="itembut">Get Started</button>
                </div>

                <div class="child1">
<lord-icon
    src="https://cdn.lordicon.com/ycwlopoz.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;">
</lord-icon><br />
               <p class="item">Manage Movies</p><br />
                    <button class="itembut">Get Started</button>

                
                </div>
                <div class="child1">
<lord-icon
    src="https://cdn.lordicon.com/bhfjfgqz.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;">
</lord-icon><br />
               <p class="item">Manage Members</p><br />
                    <button class="itembut">Get Started</button>

                </div>

            <div class="child1">
                
            <lord-icon
    src="https://cdn.lordicon.com/jsoeastu.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;">
</lord-icon><br />
               <p class="item">Manage Subscription</p><br />
                    <button class="itembut">Get Started</button>
                </div>

            </div>

        </main>

        <footer></footer>
       
    </form>
</body>
</html>
