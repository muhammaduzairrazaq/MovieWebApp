<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelpPage.aspx.cs" Inherits="Movie_Spooky.AdminBlock.HelpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="~/staticimages/bh.png" rel="icon"/>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap" rel="stylesheet" />
    
    <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>

    <style>
         body{
            background-color: rgb(29, 28, 34);
        }

         #maincontent{
             background-color:black;
             height:500px;
             width:700px;
             margin-top:100px;
            border:2px solid black;
         }

         #email{
             font-family:'Poppins';
             font-size:15px;
             font-weight:bold;
             color:white;
             text-align:center;
         }


         
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <main style="display:flex; justify-content:center;align-items:center">

         


          <div id="maincontent">

                <div style="height:150px;width:150px;border-radius:50%;background-color:black;margin-left:40%;">
               <lord-icon
    src="https://cdn.lordicon.com/mjmrmyzg.json"
    trigger="hover"
    style="width:150px;height:150px">
</lord-icon>

           </div>
                           <h1 style="font-family:'Poppins'; text-align:center; font-weight:bold; color:white;">Need Help?</h1>
                           <br />
              <h2 style="font-family:'Poppins'; text-align:center; font-size:18px; font-weight:bold; color:white;">Contact us on following email</h2>

              <p style="text-align:center;"><a  id="email" href="mailto:verifyblackhole@gmail.com">Black Hole</a></p>


          </div>

       </main>
    </form>
</body>
</html>
