<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashBoard2.aspx.cs" Inherits="Movie_Spooky.AdminBlock.AdminDashBoard2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0 " />
    <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap" rel="stylesheet" />
    <link href="~/staticimages/bh.png" rel="icon" />
    <link href="AdminDashBoard.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <style>
            body {
                margin: 0px;
                padding: 0px;
                background-color: rgb(29, 28, 34);
                overflow: hidden;
                font-family: 'Poppins';
            }

            #sidebar {
                height: 100vh;
                width: 230px;
                background-color:red;
                box-shadow: 15px 15px 8px 0px rgba(0, 0, 0, 0.4), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
                padding: 10px;
                position:fixed;
            }

            ul {
                list-style-type: none;
                margin-left: -28px;
            }

            span {
                margin-top: -5px;
            }

            p {
                display: inline;
                position: absolute;
                margin-left: 56px;
                font-weight: bold;
                font-size: 14px;
            }

            #person{
                background-color:white;
                color:black;
            }
            #help{
                background-color:white;
                color:black;
            }

            #setting{
                background-color:white;
                color:black;
            }

            #logout{
                background-color:white;
                color:black;
            }
           
        </style>



        <header>

            <nav>
                <div id="sidebar">
                    
                    <h2 style="margin-top: 40px; text-align: center;color:white">Dash Board</h2>
                    <br />
                    <hr />
                    <br />
                    <br />


                    <div id="person" style="margin-top: 100px; border:1px solid black;height:50px;">
                        <lord-icon
                            src="https://cdn.lordicon.com/ajkxzzfb.json"
                            trigger="hover"
                            colors="primary:#000000,secondary:#000000"
                            style="width: 50px; position:absolute;height: 50px"colors="primary:rgb(0,0,0)">
                        </lord-icon>
                        <p  runat="server" id="email" style="display: inline; position: absolute; margin-left: 48px;">
                            
                        </p>

                    </div>

                    <div id="help" style="margin-top:20px;border:1px solid black;height:50px;">
                        <lord-icon
                            src="https://cdn.lordicon.com/nocvdjmh.json"
                            trigger="hover"
                            style="width: 50px; height: 50px"colors="primary:rgb(0,0,0)">
                        </lord-icon>
                      <a href="HelpPage.aspx">  <p style="margin-left: 0px; color:black;">Help</p></a>
                    </div>

                    <div id="setting" style="margin-top:20px;border:1px solid black;height:50px;">

                        <lord-icon
                            src="https://cdn.lordicon.com/dycatgju.json"
                            trigger="hover"
                            style="width: 50px; height: 50px"colors="primary:rgb(0,0,0)">
                        </lord-icon>
                        <p style="margin-left: 0px;">Setting</p>
                    </div>


                    <div id="logout" style="margin-top:20px;border:1px solid black;height:50px;">

                        <lord-icon
                            src="https://cdn.lordicon.com/ajkxzzfb.json"
                            trigger="hover"
                            colors="primary:#000000,secondary:#000000"
                            style="width: 50px; height: 50px"colors="primary:rgb(0,0,0)">
                        </lord-icon>
                        <p style="margin-left: 0px;">
                            <asp:Button ID="Button2" class="buton" runat="server" Text="Log Out" OnClick="Button2_Click" />

                        </p>
                    </div>

                    <style>
                        .buton{
                            background-color:white;
                            border:1px solid white;
                        }

                    </style>

                </div>
            </nav>

        </header>

        <main style="display:flex;justify-content:center;">
            <style>
                #usersprogressbar{
                    color:white;
                    height:230px;
                    width:330px;
                    background-color:red;
                   border-radius:10px;
                   box-shadow: 15px 15px 8px 0px rgba(0, 0, 0, 0.4), 0 6px 20px 0 rgba(0, 0, 0, 0.1);

                    
                }

                

                #moviesprogressbar{
                    color:white;
                    background-color:red;
                    height:430px;
                    width:330px;
                    border-radius:10px;
                    box-shadow: 15px 15px 8px 0px rgba(0, 0, 0, 0.4), 0 6px 20px 0 rgba(0, 0, 0, 0.1);

                }

                #progressbars{
                    
                    margin-top:10px;
                    margin-left:73pc;
                    display:flex;
                    flex-direction:column;
                    justify-content:space-evenly;
                    gap:50px;
                    
                }

                #verifiedusers{
                    margin-top:4px;
                    margin-left:20px;
                    height:22px;
                    width:200px;
                    border-radius:10px;
                    border:2px solid white;
                    background-color:white;
                }

                #notverifiedusers{
                    margin-top:4px;
                    margin-left:20px;
                    height:22px;
                    width:200px;
                    border-radius:10px;
                    border:2px solid white;
                    background-color:white;
                }

                #text1{
                    font-size:12px;
                    margin-bottom:5px;
                    margin-left:20px;
                    
                }

                  #text2{
                    font-size:12px;
                    margin-bottom:5px;
                    margin-left:20px;
                    
                }


                #verifiedusersbar{
                    background-color:lawngreen;
                    border-radius:10px;
                    height:inherit;
                    width:100%;
                }
               
                 #unverifiedusersbar{
                    background-color:lawngreen;
                    border-radius:10px;
                    height:inherit;
                    width:0%;
                }



                  #actionmovies{
                    margin-top:4px;
                    margin-left:20px;
                    height:22px;
                    width:200px;
                    border-radius:10px;
                    border:2px solid white;
                    background-color:white;
                }

                #actionmoviebar{
                    background-color:lawngreen;
                    border-radius:10px;
                    height:inherit;
                   
                }
               
                 #text11{
                    font-size:12px;
                    margin-bottom:5px;
                    margin-left:20px;
                    
                }

                 #commedymovies{
                    margin-top:4px;
                    margin-left:20px;
                    height:22px;
                    width:200px;
                    border-radius:10px;
                    border:2px solid white;
                    background-color:white;
                }

                #commedymoviebar{
                    background-color:lawngreen;
                    border-radius:10px;
                    height:inherit;
              
                }
               
                 #text22{
                    font-size:12px;
                    margin-bottom:5px;
                    margin-left:20px;
                    
                }

                  #crimemovies{
                    margin-top:4px;
                    margin-left:20px;
                    height:22px;
                    width:200px;
                    border-radius:10px;
                    border:2px solid white;
                    background-color:white;
                }

                #crimemoviebar{
                    background-color:lawngreen;
                    border-radius:10px;
                    height:inherit;
                   
                }
               
                 #text33{
                    font-size:12px;
                    margin-bottom:5px;
                    margin-left:20px;
                    
                }


                   #horrormovies{
                    margin-top:4px;
                    margin-left:20px;
                    height:22px;
                    width:200px;
                    border-radius:10px;
                    border:2px solid white;
                    background-color:white;
                }

                #horrormoviebar{
                    background-color:lawngreen;
                    border-radius:10px;
                    height:inherit;
                   
                }
               
                 #text44{
                    font-size:12px;
                    margin-bottom:5px;
                    margin-left:20px;
                    
                }

                   #scifimovies{
                    margin-top:4px;
                    margin-left:20px;
                    height:22px;
                    width:200px;
                    border-radius:10px;
                    border:2px solid white;
                    background-color:white;
                }

                #scifimoviebar{
                    background-color:lawngreen;
                    border-radius:10px;
                    height:inherit;
                   
                }
               
                 #text55{
                    font-size:12px;
                    margin-bottom:5px;
                    margin-left:20px;
                    
                }



                 
.container {
    display: flex;
   
    width:600px;
    gap:10px;
    flex-wrap: wrap;
    justify-content: left;
    position: absolute;
    margin-right:22pc;
    margin-top:0px;
    margin-top:110px;
}



.child1 {
  
    margin: 6px;
    border: 5px solid rgb(81, 85, 216);
    height: 230px;
    width: 270px;
    border-radius: 8px;
    background-color:rgb(81, 85, 216);
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}



.itembut {
    font-weight:bold;
    background-color:black;
    border: 2px solid black;
    color: white;
    font-size: 11px;
    border-radius: 8px;
    text-align: center;
    height: 50px;
    width: 110px;
    margin-left: 80px;
    position:absolute;
    margin-top: 38px;
}

  
.item {
    font-size: 18px;
    font-weight: bold;
    text-align: center;
    color:white;

}
            </style>

            <div id="progressbars">
           
            <div id="usersprogressbar">
                <h3 style="text-align:center;">Users Data</h3>

                <h4 id="text1"> Verified Users</h4>
                <div id="verifiedusers">
                    <div id="verifiedusersbar"></div>
                </div>

                <h4 id="text2"> Unverified Users</h4>
                <div id="notverifiedusers">
                    <div id="unverifiedusersbar"></div>
                </div>

            </div>

            <div id="moviesprogressbar">

                <h3 style="text-align:center;">Movies Data</h3>

                <h4 id="text11">Action Movies</h4>
                <div runat="server" id="actionmovies">
                   
                    

                </div>

                <h4 id="text22">Commedy Movies</h4>
                <div runat="server" id="commedymovies">

                    
                </div>

                
                <h4 id="text33">Crime Movies</h4>
                <div runat="server" id="crimemovies">

                   
                </div>


                <h4 id="text44">Horror Movies</h4>
                <div runat="server" id="horrormovies">

                </div>

                
                <h4 id="text55">Science Fiction</h4>
                <div runat="server" id="scifimovies">

                   
                </div>
               
                

            </div>

                </div> <!-- ending progress bar-->


             <div class="container">
            <%--    
                <div class="child1">

                    <lord-icon
    src="https://cdn.lordicon.com/ofwpzftr.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;"colors="primary:#ffffff">
</lord-icon>
                    <br />
               <p class="item" style="margin-left:5pc;">View Movies</p>
                    <br />
                    <button class="itembut">Get Started</button>
                </div>

                <div class="child1">
<lord-icon
    src="https://cdn.lordicon.com/ynwbvguu.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;"colors="primary:#ffffff">
</lord-icon><br />
               <p class="item"style="margin-left:87px;">Add Movies</p><br />
                    <button class="itembut">Get Started</button>
                </div>

                <div class="child1">
<lord-icon
    src="https://cdn.lordicon.com/ycwlopoz.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;"colors="primary:#ffffff">
</lord-icon><br />
               <p class="item"style="margin-left:67px;">Manage Movies</p><br />
                    <button class="itembut">Get Started</button>

                
                </div>
                <div class="child1">
<lord-icon
    src="https://cdn.lordicon.com/bhfjfgqz.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;"colors="primary:#ffffff">
</lord-icon><br />
               <p class="item">Manage Members</p><br />
                    <button class="itembut">Get Started</button>

                </div>--%>

<%--                  <div class="child1">
<lord-icon
    src="https://cdn.lordicon.com/bhfjfgqz.json"
    trigger="hover"
    style="width:70px;height:70px;margin-left:100px;"colors="primary:#ffffff">
</lord-icon><br />
               <p class="item">Manage App</p><br />
                    <button class="itembut">Get Started</button>

                </div>--%>

                   <div class="child1" style="margin-left:170px;margin-top:115px;background-color:red;border:2px solid red;">
<lord-icon
    src="https://cdn.lordicon.com/dycatgju.json"
    trigger="hover"
    colors="primary:#ffffff"
    style="width:70px;height:70px">
</lord-icon><br />
               <p class="item"style="margin-left:80px;position:relative;">Manage App</p><br />
                    
                    <asp:Button style="background-color:white; border:1px solid white;color:black;" class="itembut" ID="Button1" runat="server" Text="Get Started" onclick="Button1_Click"/>

                </div>
           
 </div>


        </main>


        <footer>
        </footer>




    </form>
</body>
</html>
