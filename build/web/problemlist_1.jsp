<%-- 
    Document   : problemlist_1
    Created on : Aug 1, 2016, 9:29:06 PM
    Author     : Lenovo G40
--%>

<%@page import="com.info.model.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.info.utils.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.info.model.Problem"%>
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
        <title>RequestList</title>
    </head>
    <body>
            <div id="head" style="overflow: visible;">
                 <ul class="head" >
                        <li class="head">College Online Help Desk</li>
<!--                       <li class="head" style="padding-left:750px; padding-right:10px;">
                            <a href="noticelist">
                                <span>
                                    Notice
                                </span>
                            </a>
                        </li>
                        <li class="head" style="padding-left:10px; padding-right:10px;">
                            <a href="postrequest.jsp">
                                <span>
                                    Request
                                </span>
                            </a> 
                        </li>-->
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
            
<!--            <a href="postrequest.jsp"> Post Request</a>-->
            <br><br>
            <a href="ProblemList1"> View Request List</a>
                        
            
            
        </form>
         <%
            } else{
                response.sendRedirect("login.jsp");
                }


        %>
        </div>
        
        <div id="content" style="z-index: -1; margin-top:100px;padding-left:0px;">
             <div class="w3-card-8 w3-dark-grey" style=" box-sizing: content-box; border-radius: 8px; margin:0px;">

                
                    <div id="bodyy" >
                        <span style="font-size: 32px;">
                            List Of Request
                        </span> 
            
                         <form>
                             <%
            List<Problem> ProblemList=(ArrayList)request.getAttribute("ProblemList");
        %>
        <table style="table-layout: none; ">
            <tr>
                <th> 
                    <span style="padding-left: 25px;padding-right: 15px; padding-top: 15px;">  ID</span>
                </th>
                <th> 
                    <span style="padding-left: 15px;padding-right: 25px; padding-top: 15px;">
                        Problem
                    </span>
                </th>
                <th>
                    <span style="padding-left: 25px;padding-right: 25px; padding-top: 15px;">
                        Department
                    </span>
                </th>
            </tr>
            <% for(Problem problem:ProblemList){%>
            <tr>
               <td ><span style="padding-left: 25px"><%= problem.getId() %></span></td>
                <td><span style="padding-left: 50px"><%= problem.getPname()%></span></td>
                <td><span style="padding-left: 30px"><%= problem.getDepartment()%></span></td>
                                    
                                                                           <%}%> 
                
            </tr>
                </table>

                         </form>
            </div>
             </div>
        </div>
<!-- <div class="lower-layer" style="opacity: 0; padding-top: 1450px;padding-bottom: 0px; margin: 0px; ">
        </div>-->
 
                                                                           
<!--            <div class="footer" style="float:left; width:100%;">
<div class="footer" style="position:absolute; margin-top: 780px; background: black; margin-left: 0px;margin-right:0px;">
              <button style="border-bottom: 1px solid #EEE;margin-left:5px; text-align: left;">Contact Us</button>       
             <a href="About.jsp"> <span style="padding-left:20px;">About Us</span></a>
             <p style="margin:0px; color:white; margin-left: -40px;">
                 9841775543
                 <br>
                 9841233677
             </p>
                
            
            </div>-->
             
        
        
    </body>
</html>
