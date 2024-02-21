<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Movie_Spooky.Login.LoginPage" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="~/SignUp/SignUpPageStyleSheet.css" rel="stylesheet" />
    <link href="~/staticimages/bh.png" rel="icon"/>

   
</head>
   
    
<body>
      <form id="form1" runat="server">
    
    <header></header>

    <main>
      
        <div class="container" >
            
            <div class="text-block">

                <h1 style="margin-left:20px">Log In</h1>
              
               <input id="input1" type="email" placeholder="Enter Email ID"  runat="server"/>
               <input id="input2" type="password" title="validate" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" placeholder="Enter Password" minlength="8" maxlength="10" runat="server"/>

         <div id="scripthere" runat="server">

         </div>

                       <br /> 
                <asp:Button ID="Button1" style="margin:20px;margin-top:50px;padding:10px;width:88%;font-size:18px;font-weight:bold" runat="server" Text="Log In" OnClick="verifyuser"></asp:Button>
                    <a  style="margin:20px; color:white;" href="#">Need Help?</a>
              
            </div>

            <div class="foot">
                <a  class="atag" href="#">Questions? Contact us.</a>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Privacy</a></li>
                </ul>

            </div>
        </div>
    

    </main>

    <footer></footer>

      </form>
</body>
</html>
