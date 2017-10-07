<%-- 
    Document   : dephead
    Created on : Aug 4, 2016, 5:29:26 PM
    Author     : Lenovo G40
--%>

<%@page import="com.info.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" type="text/css" href="css/para.css">
<link rel="stylesheet" type="text/css" href="css/navigation.css">
<link rel="stylesheet" type="text/css" href="css/body.css">
<link rel="stylesheet" type="text/css" href="css/popdownbutton.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Department Head</title>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <style>
               #notification {
    position:fixed;
        top:0px; /* Set to 0 or wherever */
        width:30%; /* set to 100% if space is available */
        z-index:105;
        margin-left: 200px; 
        text-align:center;
        font-weight:normal;
        font-size:14px;
        font-weight:bold;
        color:white;
        background:#ddd;
        padding:5px;
 }

            
        </style>
        <script>
            function notify123() {


               $("#notification").fadeIn(1000);
               $("#notification").delay(2000);
               $("#notification").fadeOut(1000);
    
            }

        </script>
    </head>
    <body>
         <div id="head" style="overflow: visible;">
                 <ul class="head" style="margin-left:-30px;" >
                        <li class="head" >
                            <span>
                        College Online Help Desk        
                            </span>
                        </li>
                       <li class="head" style="padding-left:680px; padding-right:10px;">
                            <a href="notice.jsp">
                                <span>
                                    Notice
                                </span>
                            </a>
                        </li>
                       <li class="head" style="padding-left:10px; padding-right:10px;">
          <form action="depnot.jsp">       
                            <button onclick="notify123()" style="margin:0px; padding-top:5px;">
                                <span>
                                    Request
                                </span>
                            </button>
        </form>                </li>
                        <li class="head" style="padding-left:150px; padding-right:10px;">
                            <a href="logout.jsp">
                                <span>Logout</span>
                            </a>
                        </li>
                        
                 </ul>
          </div>
        
        <div id="nav">
            <%
                User verifiedUser=(User)session.getAttribute("verifiedUser");
                
                if(verifiedUser!=null){
                    out.println("Welcome "+verifiedUser.getUserName());
            %>
      
    
            <h1>Department Head</h1>
        <a href="ProblemList1">View Request List</a>
         <%
            } else{
                response.sendRedirect("login.jsp");
                }


        %>
        </div>
        <div id="bodyy_hidden">
                    
                </div>
            </div>
        </div>
<!--        <p style="clear:both;" />           -->
        <div></div>
        
      <!--<footer style="background:black; margin-bottom:0px;">-->
<!--<div class="footer" style="float:left; width:100%;">
              <button style="border-bottom: 1px solid #EEE;margin-left:5px; text-align: left;">Contact Us</button>       
             <a href="About.jsp"> <span style="padding-left:20px;">About Us</span></a>
             <p style="margin:0px; color:white; margin-left: 5px;">
                 9841775543
                 <br>
                 9841233677
             </p>
                
</div>-->
    </body>
</html>
