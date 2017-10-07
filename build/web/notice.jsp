<%-- 
    Document   : notice.jsp
    Created on : Aug 4, 2016, 6:28:41 PM
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
        <title>Notice</title>
    
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
<!--            <div id="head" style="overflow: visible;">
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
          </div>-->

    <!--<div id="head" style="overflow:visible;">
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
                     -->

        <%
                User verifiedUser=(User)session.getAttribute("verifiedUser");
                
                if(verifiedUser!=null){
                    //out.println("Welcome"+verifiedUser.getUserName());
            %>
       
            
            <div id="content" style="margin-top:95px;">
        
        
            <div class="w3-card-8 w3-dark-grey" style=" box-sizing: content-box; border-radius: 8px; width: 645px; ">
                
                <div id="bodyy_postreq">
                    Post notice
                    <form action ="noticeservlet" method="post">
                           <span>
                               Notice: 
                           </span>
                            <input type="text" name="notice"><br><br>
                            <span>
                            Department :  
                            </span>
                            <select name="department" default="0">
                                    <option value="0" selected>Faculty</option>
                                    <option value="BCT">BCT</option>
                                     <option value="BEX">BEX</option>
                                    <option value="BEL">BEL</option>
                                    <option value="BCE">BCE</option>
                                    </select>
               <br>
               <br>
               <!--<input type="text" name="department"><br><br>-->
               Year : <input type="text" name="year"><br><br>
              
            <input type="submit" value="Add">
        </form>
                </div> 
<!--            <div class="footer" style="float:left; width:100%;">
              <button style="border-bottom: 1px solid #EEE;margin-left:5px; text-align: left;">Contact Us</button>       
             <a href="About.jsp"> <span style="padding-left:20px;">About Us</span></a>
             <p style="margin:0px; color:white; margin-left: -80px;">
                 9841775543
                 <br>
                 9841233677
             </p>
                
</div>          -->
         <%
            } else{
                response.sendRedirect("login.jsp");
                }


        %>
    </body>
</html>
