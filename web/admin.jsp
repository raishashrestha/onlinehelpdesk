<%-- 
    Document   : admin
    Created on : Aug 2, 2016, 4:36:43 PM
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
       
            
                
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
                 <ul class="head" >
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
                             <form action="check_problem.jsp">       
                                    <button onclick="notify123()" style="margin:0px; padding-top:5px;">
                                        <span>
                                            Request
                                        </span></button>
                              </form>
                        </li>
                        <li class="head" style="padding-left:150px; padding-right:10px;">
                            <a href="logout.jsp">
                                <span>Logout</span>
                            </a>
                        </li>
                        
                 </ul>
          </div>
        
            <div id="nav">

    <!--<br>
      <div id="notification" style="display: none;"> 
                    <div> <font color="red">You have a new request! </font></div>
            <form action="check_problem.jsp">
                <input type="submit" name="view" >
            </form>
            </div>-->




                <%
                    User verifiedUser=(User)session.getAttribute("verifiedUser");

                    if(verifiedUser!=null){
                        out.println("Welcome "+verifiedUser.getUserName());
                %>


            <form>
                <a href="studentform.jsp"> Student Form </a>
                <br><br>
                <a href="list">Student List</a>
                <br><br>
                <a href="ProblemList1">View Problem List</a>
                <br><br>
                <a href="notice.jsp">Post Notice</a>

            </form>
            <%
                } else{
                    response.sendRedirect("login.jsp");
                    }


            %>
    </body>
</html>
