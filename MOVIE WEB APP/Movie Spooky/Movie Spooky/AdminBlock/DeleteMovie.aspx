<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteMovie.aspx.cs" Inherits="Movie_Spooky.AdminBlock.DeleteMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="~/staticimages/bh.png" rel="icon"/>
        <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>

</head>
<body>

    <style>
        body{
            background-color: rgb(29, 28, 34);
        }

        .button{
            position:absolute;
            height:140px;
            width:120px;
            border-radius:10px;
            background-color:rgb(29, 28, 34);
            margin-top:8pc;
            border:1px solid rgb(29, 28, 34);
            
        }
    </style>
    <form id="form1" runat="server">
        
        <main style="display:flex;justify-content:center;">

            <div id="delete" style="margin-top:40px;height:auto;width:auto;">
                <lord-icon
    src="https://cdn.lordicon.com/tntmaygd.json"
    trigger="morph"
    colors="primary:#4be1ec,secondary:#cb5eee"
    state="morph-trash-in"
    style="width:300px;height:300px">
</lord-icon>

            </div>
      <asp:Button ID="Button1" runat="server" Text="" class="button" OnClick="Button1_Click"/>

            
            

        </main>
        <br />
        <br />
        <div style="color:white;font-family:sans-serif">
        <h1  runat="server" id="h1" style="text-align:center;">Tap Bin to Delete Movie</h1>

            </div>
        <div id="alert" runat="server">
            
        </div>

    </form>
</body>
</html>
