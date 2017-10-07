<%-- 
    Document   : login
    Created on : Jul 31, 2016, 9:41:46 PM
    Author     : Lenovo G40
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.http.HttpServletResponse" %>
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
        <title>Login Page</title>
    </head>
    
        <%
          String msg="";  
//            String msg=response.getAttribute("msg");
         %>
       
        
        
                <div id="head" style="overflow: visible;">
                 <ul class="head" >
                        <li class="head" style="left"><a href="homepage.jsp" style="padding-right: 30px;">College Online Help Desk</a></li>
                          <li class="head" style="padding-left:483px; padding-right:10px;">
                             Login as 
                          </li>
                        <li class="head">
                <div class="dropdown">
                    <button  class="dropbtn" style="margin-top:-20px;">Student</button>
        <div id="myDropdown" class="dropdown-content" style="border-radius:5px; padding-top: 0px; padding-right: 20px;padding-left:25px; ">
            <a style="color: black; font-family: Verdana,sans-serif; font-size: 14px;">          
                <form action="UserServlet" method="post">
                    <p style="float: left;">User Name:
                        </p> <input type="text" name="username">
                        <p style="float: left; ">
                                            Password:
                        </p>
                        
                        <input type="password" name="password">
                        <p>
                                            <input type="submit" value="Login" name="Login"> 
                         </p>                         
                                        </form>
                                        </a> 
         </div>
        </div>
        
                </li>   
             <li class="head">   
                <div class="dropdown">
                    <button  class="dropbtn" style="margin-top:-20px;">Admin</button>
        <div id="myDropdown" class="dropdown-content" style="border-radius:5px; padding-top: 0px; padding-right: 20px;padding-left:25px; ">
           <a style="color: black; font-family: Verdana,sans-serif; font-size: 14px;">  
        <form action="adminservlet" method="post">
            
            <p style="float: left;">
                Username:
            </p>
                <input type="text" name="username">
            <p style="float: left;">
                    Password:
            </p>
            <p style="float: left;">
                <input type="password" name="password">
            </p>       
            <p> 
                <input type="submit" value="Login" name="Login"> 
            </p>
        </form>
                </a>
        </div>
         </div>
          </li>       
       <li class="head">   
                <div class="dropdown">
                    <button  class="dropbtn" style="margin-top:-20px;">College Management</button>
        <div id="myDropdown" class="dropdown-content" style="border-radius:5px; padding-top: 0px; padding-right: 20px;padding-left:25px; ">
           <a style="color: black; font-family: Verdana,sans-serif; font-size: 14px;">  
       
            <form action="depheadservlet" method="post">
            User Name:<input type="text" name="username">
            Password:<input type="password" name="password">
            <input type="submit" value="Login" name="Login"> 
        </form>
            </a>
        </div>
            </div>
        </li>
                
            </ul>
                </div>
<!--        <div id="about_us" class="lower-layer">
            <h1>About Us</h1>
            <p>
               
               
            </p>
        </div>
            <div id="footer" class="aboutus">
                
             <a href="About.jsp"> <span>About Us</span></a>
             <button>Contact Us</button>
             <p>
                 9841775543
             </p>
                
            
                 
           
            </div>-->
    </body>
</html>
