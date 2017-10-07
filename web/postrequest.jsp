<%-- 
    Document   : postrequest
    Created on : Aug 7, 2016, 11:50:16 PM
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
        <title>Post Request!</title>
    </head>
    <body>
             <div id="head" style="overflow: visible;">
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

        <div id="nav">
        <!--<div class="lower-layer">-->
                               <%
                User verifiedUser=(User)session.getAttribute("verifiedUser");
                
                if(verifiedUser!=null){
                    out.println("Welcome "+verifiedUser.getUserName());
            %>
        <form>
            
            <a href="postrequest.jsp"> Post Request</a>
            <br><br>
            <a href="ProblemList"> View Request List</a>
            <br><br>
             <a href="responseservlet"> View Response</a>
             <br><br>
                        
            
            
        </form>
         <%
            } else{
                response.sendRedirect("login.jsp");
                }


        %>
        
        </div>
        <div id="content" style="margin-top:95px;">
        
        
            <div class="w3-card-8 w3-dark-grey" style=" box-sizing: content-box; border-radius: 8px; width: 645px; ">
                 
                <div id="bodyy_postreq">
                     <form action="ProblemServlet" method="post">
                         <span style="font-size:32px;">Post Request!</span><br>
                         <span style="padding-right:85px;"> Request: 
                            </span><input type="text" name="request" style="border-radius: 5px"> <br><br>
                            
                            <span style="padding-right:1px;">
                                Request Description:
                            </span>
                            <input type="text" name="request_description" style="border-radius: 5px"><br><br>
                            <span style="padding-right:60px;">
                            Department:
                            </span><input type="text" name="department" style="border-radius: 5px"><br><br>
                            <input type="submit" name="Add" value="Add" style="float:right">
             
        </form>
            
          
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
<!--</footer>-->
        
    </body>
</html>
