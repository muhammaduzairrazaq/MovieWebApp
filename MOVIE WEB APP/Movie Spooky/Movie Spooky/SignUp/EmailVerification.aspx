<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailVerification.aspx.cs" Inherits="Movie_Spooky.SignUp.EmailVerification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="SignUpPageStyleSheet.css" rel="stylesheet" />
    <link href="~/staticimages/bh.png" rel="icon"/>

   
</head>
   
    
<body>
      <form id="form1" runat="server">
    
    <header></header>

    <main>
      
        <div class="container" >
            
            <div class="text-block" style="height:370px;margin-top:70px;">

                <h1 style="margin-left:20px">Sign Up</h1>
              

                <asp:TextBox ID="TextBox1" style="margin:20px;border:2px solid orange;border-radius:5px;padding:10px;width:80%;" type="text" placeholder="Enter Verification Code" runat="server"></asp:TextBox>

                       <br /> 
                <asp:Button ID="Button1" style="margin:20px;margin-top:50px;padding:10px;width:88%;font-size:18px;font-weight:bold;" runat="server" Text="Sign Up" OnClick="Button1_Click"></asp:Button>
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
