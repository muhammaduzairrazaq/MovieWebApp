<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubscriptionPayment.aspx.cs" Inherits="Movie_Spooky.SignUp.SubscriptionPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="~/staticimages/bh.png" rel="icon"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&family=Yeon+Sung&display=swap" rel="stylesheet"/>
    <link href="SubscriptionPayment.css" rel="stylesheet" />

    

   
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

    <main style="display:flex;justify-content:center;align-items:center;">
     
       <div id="maincontainer">
           <h1>Set up your credit or debit card</h1>

           <input class="inpbox" type="text" maxlength="50" placeholder="First name" onclick="clickon()"/><br />
           <input class="inpbox" type="text" placeholder="Last name" maxlength="50"/><br />
           <input class="inpbox" type="text" min="0" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"placeholder="Card number"/><br />
           <input class="inpbox" type="tel" placeholder="Expiration date (MM / YY)" title="date validation" pattern="[0-9]+" /> <br />
           <input class="inpbox" type="password" placeholder="Security code" /><br />

           <asp:Button ID="Button1" class="mbuton" runat="server" Text="Start MemberShip" onclick="changepage"/>
           
       </div>
    

    </main>

    <footer>

         <div class="foot">
                <a  class="atag" href="#">Questions? Contact us.</a>
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
