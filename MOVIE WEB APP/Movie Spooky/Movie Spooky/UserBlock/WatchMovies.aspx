<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WatchMovies.aspx.cs" Inherits="Movie_Spooky.UserBlock.WatchMovies" %>

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
   <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>

    <style>
         body{
            margin:0px;
            padding:0px;
            background-color:rgb(29, 28, 34);
            font-family: 'Yeon Sung', cursive;
            overflow:hidden;
        }

         #bigscreen{
            
             height:720px;
             width:1300px;
             background-color:black;
             box-shadow: 15px 15px 8px 0px rgba(0, 0, 0, 0.9), 0 6px 20px 0 rgba(0, 0, 0, 0.1);

         }
         
         #vedio{
              width:100%;
              height:500px;
             
         }
         #discription{
             padding:10px;
            color:white;
            font-family:sans-serif;
            font-size:15px;
         }

          .butoon{
            width:50px;
            height:50px;
            border-radius:10px;
            background-color:red;
        }

          #add{
              float:right;
              height:50px;
              width:55px;
              background-color:black;
          }
          
.butoonn {
    border: 1px solid red;
    color: white;
    text-align: center;
    background-color: red;
    border-radius: 8px;
    height: 52px;
    width:130px;
    margin-right:10px;
   float:right;
    
    font-size: 13px;
   
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <main style="display:flex;justify-content:center;margin-top:13px;">

                    <div id="bigscreen">

                            <div id="vedio" runat="server">

                            </div>

                        <div id="discription">
                            <asp:Button ID="Button1" style="margin-right:-10px; " runat="server" Text="Add WatchLater" class="butoonn" onclick="Add_Click"/>  
                            <asp:Button ID="Button2"  runat="server" Text="Remove WatchLater" class="butoonn" OnClick="Remove_Click"/>
                            <br /> 
                            <p runat="server" id="des1">Iron Man | May 2, 2008 | Robert Downey Junior | Action | 2h 6m | 7.9 IMDB</p>
                            <br />
                            <p>Movie Discription</p>
                            <p runat="server" id="des2">When Tony Stark, an industrialist, is captured, he constructs a high-tech armoured suit to escape. Once he manages to escape, he decides to use his suit to fight against evil forces to save the world.</p>

                        </div>


                     </div>

           <div id="foralert" runat="server">

           </div>


       </main>
    </form>
</body>
</html>
