<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage1.aspx.cs" Inherits="Movie_Spooky.AdminPage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Black Hole</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="staticimages/chal.png" rel="icon"/>
    <link href="AdminPage1StyleSheet.css" rel="stylesheet" />
    <script src="https://cdn.lordicon.com/fudrjiwc.js"></script>
    <link href="~/staticimages/bh.png" rel="icon"/>
     <script src="SearchScript.js"></script>
</head>
    
<body>
    
    <form id="form1" runat="server">
    <header>
      <%--  <nav>
            
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


            

        </nav>--%>

    </header>


        <main>
            
            <div id="searchsection">
               <button class="ibutf" style="background-color:white;"><lord-icon
    src="https://cdn.lordicon.com/zniqnylq.json"
    trigger="hover"
    colors="primary:#242424,secondary:#66eece"
    style="width:50px;height:50px">
</lord-icon></button>
 <input id="searchbarf" type="text" placeholder="Search Movies" onkeyup="searchme()"/>

            </div>

        <div id="edittable">
            <table id="datatable">
                <thead>
                   <%--  <tr>
                    <th>Movie Name</th>
                    <th>Release</th>
                    <th>Duration</th>
                    <th>Rating</th>
                    <th>View</th>
                    <th>Edit</th>
                    <th>Delete</th>
                     </tr>--%>

                      <tr>
                    <th>Email ID</th>
                    <th>Verification Status</th>
                    <th>Acount Type</th>          
                    <th>Delete</th>
                        
                     </tr>

                </thead>

                <tbody id="tablebody" runat="server">
                          
                              
                                  
                </tbody>
                
            </table>
        </div>
            </main>

        <footer></footer>
    </form>
</body>
</html>
