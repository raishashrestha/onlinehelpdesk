<%-- 
    Document   : student
    Created on : Aug 2, 2016, 9:25:01 PM
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
        <title>Student</title>
    </head>
    <body>
<!--             <div id="head" style="overflow: visible;">
                 <ul class="head" >
                        <li class="head">College Online Help Desk</li>
                       <li class="head" style="padding-left:750px; padding-right:10px;">
                            <a href="noticelist">
                                <span>
                                    Notice
                                </span>
                            </a>
                        </li>
                        <li class="head" style="padding-left:10px; padding-right:10px;">
                            <a href="student.jsp">
                                <span>
                                    Request
                                </span>
                            </a> 
                        </li>
                        <li class="head" style="padding-left:100px; padding-right:10px;">
                            <a href="logout.jsp">
                                <span>Logout</span>
                            </a>
                        </li>
                        
                 </ul>
          </div>
        -->
            <jsp:include page="header.jsp" />
            <div>
        <div id="nav">
        <!--<div class="lower-layer">-->
                               <%
                User verifiedUser=(User)session.getAttribute("verifiedUser");
                
                if(verifiedUser!=null){
                    out.println("Welcome "+verifiedUser.getUserName());
            %>
            <br>
            <a href="postrequest.jsp"> Post Request</a>
            <br><br>
            <a href="ProblemList"> View Request List</a>
            <br><br>
             <a href="responseservlet"> View Response</a>
             <br><br>
                        
            
            
       
         <%
            } else{
                response.sendRedirect("login.jsp");
                }


        %>
         <p style="clear:both;" />           
</div>
       
<!--        </div>
        <div class="lower-layer" style="opacity: 0; padding-top: 400px;padding-bottom: 0px; margin: 0px; ">
        </div>-->
<!--                 <footer style="background:black; ">
<div class="footer" style="position:absolute; margin-top: 780px; background: black; margin-left: 0px;margin-right:0px;">
              <button style="border-bottom: 1px solid #EEE;margin-left:5px; text-align: left;">Contact Us</button>       
             <a href="About.jsp"> <span style="padding-left:20px;">About Us</span></a>
             <p style="margin:0px; color:white; margin-left: 5px;">
                 9841775543
                 <br>
                 9841233677
                  <a href="responseservlet" style="color:white;"> View Response</a>
             </p>
                
            
</footer>-->
        </div>
    </body>
</html>