<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subscription.aspx.cs" Inherits="Movie_Spooky.SignUp.Subscription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Black Hole</title>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap" rel="stylesheet"/>
    <link href="~/staticimages/bh.png" rel="icon"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&family=Yeon+Sung&display=swap" rel="stylesheet"/>
    <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="SubscrptionPageStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <header>
           <nav>
               <div id="nabar">

                   <ul id="barul" style=" display:inline-block;">
                       <li ><a href="#">Black Hole</a></li>
                       <li style="margin-left:77pc;">

                         <a  href="#" >LogOut</a>
                    </li>
                   </ul>

               </div>
           </nav>
       </header>

        <main style="display:flex;justify-content:center;margin-top:20px">
            <div class="outercantainer">

                <ul id="mainul" style="padding:20px">
                    <li style="list-style-type:none;"><h1>Choose the plan that’s right for you</h1></li>
                    <li><lord-icon
    src="https://cdn.lordicon.com/lbsajkny.json"
    trigger="hover"
    colors="primary:#e83a30,secondary:#e83a30"
    style="width:50px;height:50px">
</lord-icon><p  class="tick" style="margin-top:-45px;margin-left:50px;">Watch all you want.</p></li>
                    
                    <li><lord-icon
    src="https://cdn.lordicon.com/lbsajkny.json"
    trigger="hover"
    colors="primary:#e83a30,secondary:#e83a30"
    style="width:50px;height:50px">
</lord-icon><p class="tick" style="margin-top:-45px;margin-left:50px;">Ad-free.</p></li>

                    <li><lord-icon
    src="https://cdn.lordicon.com/lbsajkny.json"
    trigger="hover"
    colors="primary:#e83a30,secondary:#e83a30"
    style="width:50px;height:50px">
</lord-icon><p  class="tick" style="margin-top:-45px;margin-left:50px;">Recommendations just for you.</p></li>

                    <li><lord-icon
    src="https://cdn.lordicon.com/lbsajkny.json"
    trigger="hover"
    colors="primary:#e83a30,secondary:#e83a30"
    style="width:50px;height:50px">
</lord-icon><p class="tick" style="margin-top:-45px;margin-left:50px;">Change or cancel your plan anytime.</p></li>

                </ul>
                
                <div class="innercontainer">
                    

                    <asp:Button ID="Button1" class="but" runat="server" Text="Mobile" onclick="changepage"/>
                    <asp:Button ID="Button2" class="but" runat="server" Text="Basic" onclick="changepage"/>
                    <asp:Button ID="Button3" class="but" runat="server" Text="Standard" onclick="changepage"/>
                    <asp:Button ID="Button4" class="but" runat="server" Text="Premium" onclick="changepage"/>
                    

                   
                </div>
                 <div class="insidecontainerplus">
                       

                     <p class="tick" style="grid-row:1 / 1;font-size:20px;">Monthly price</p>
                     <p class="tick" style="grid-row:2 / 2;font-size:20px;">Video quality</p>
                     <p class="tick" style="grid-row:3 / 3;font-size:20px;">Resolution</p>

                   

                     <p  style="text-align:center;font-size:18px;">Rs250</p>
                     <p style="text-align:center;font-size:18px;">Rs450</p>
                     <p  style="text-align:center;font-size:18px;">Rs800</p>
                     <p  style="text-align:center;font-size:18px;">Rs1,100</p>

                     
                     <p  style="text-align:center;font-size:18px;">Good</p>
                     <p style="text-align:center;font-size:18px;">Good</p>
                     <p  style="text-align: center; font-size: 18px;">Better</p>
                     <p  style="text-align:center;font-size:18px;">Best</p>

                     <p  style="text-align:center;font-size:18px;">480p</p>
                     <p style="text-align:center;font-size:18px;">720p</p>
                     <p  style="text-align:center;font-size:18px;">1080p</p>
                     <p  style="text-align:center;font-size:18px;">4K+HDR</p>

                    </div>
                    </div>
           

        </main>

        <footer>
             <div class="foot">
                <a  style="margin-left:43px;" href="#">Questions? Contact us.</a>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Privacy</a></li>
                </ul>

            </div>
        </footer>
    </form>
</body>
</html>
