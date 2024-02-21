<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMovies.aspx.cs" Inherits="Movie_Spooky.AdminBlock.AddMovies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="/staticimages/bh.png" rel="icon"/>
    <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
     <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link href="ManageMovies.css" rel="stylesheet" />
    <link href="../UserBlock/ViewMoviesStyleSheet.css" rel="stylesheet" />
</head>
<body>

    <style>
        body{
            margin:0px;
            padding:0px;
            background-color: rgb(29, 28, 34);
            overflow:hidden;
        }


        #addcontainer{
            margin-left:60px;
            width:600px;
            height:auto;
        }

        #movieentries{
            border:2px solid white;
        }

        .input{
            height:50px;
            width:90%;
            border:1px solid red;
            border-radius:10px;
            margin:7px;
            margin-left:0px;
        }
        .mbuton{
            height:60px;
            border-radius:10px;
            font-family:sans-serif;
            text-align:center;
            background-color:red;
            color:white;
            font-weight:bold;
            margin-top:5px;
            font-size:18px;
            width:90%
        }


    </style>
    <form id="form1" runat="server">
        <main style="display:flex;justify-content:center;align-items:center;">

            <div id="addcontainer">
                <h3 style="font-family:'Poppins'; color:white;">Choose Genere</h3>
                 <div class="dropdown">
                <a href="#" class="dropbtn">
                    <lord-icon
                        src="https://cdn.lordicon.com/albqovim.json"
                        trigger="hover"
                        colors="primary:#e83a30"
                        style="width: 50px; height: 50px;">
                    </lord-icon>
                </a>
         <%--       <div class="dropdown-content" style="width: 200px; background-color: rgba(29, 28, 34,0.5);">
                     
                    <asp:Button ID="Button1" class="buttons" runat="server" Text="Action Movies" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" class="buttons" runat="server" Text="Comedy Movies" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" class="buttons" runat="server" Text="Crime Movies" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" class="buttons" runat="server" Text="Horror Movies" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" class="buttons" runat="server" Text="Science Fiction Movies" OnClick="Button5_Click" />
</div>
--%>

                     <asp:DropDownList ID="DropDownList1" class="dropdown-content" style="background-color:white;font-weight:bold; font-size:15px;border-radius:10px;"   runat="server"></asp:DropDownList>
                     
            </div>
                  <div id="maincontainer">
           <h1 style="font-family:'Poppins';color:white;">Enter Movie Details</h1>

            <asp:TextBox ID="TextBox2"  class="input" runat="server" placeholder="Enter Movie Name"></asp:TextBox>
            <asp:TextBox ID="TextBox3"  class="input" runat="server" placeholder="Enter Movie Discription"></asp:TextBox>
            <asp:TextBox ID="TextBox4"  class="input" runat="server" placeholder="Enter Movie Release Date"></asp:TextBox>
            <asp:TextBox ID="TextBox5"  class="input" runat="server" placeholder="Enter Movie Watch Time"></asp:TextBox>
            <asp:TextBox ID="TextBox6"  class="input" runat="server" placeholder="Enter Movie Rating"></asp:TextBox>
            <asp:TextBox ID="TextBox7"  class="input" runat="server" placeholder="Enter Movie Poster Link"></asp:TextBox>
            <asp:TextBox ID="TextBox8"  class="input" runat="server" placeholder="Enter Movie Link"></asp:TextBox>
             <asp:Button ID="Button9" class="mbuton" runat="server" Text="Add Movie" onclick="Button9_Click"/>
           
       </div>


                </div>

            <div runat="server" id="alrt">

            </div>

        </main>
    </form>
</body>
</html>
