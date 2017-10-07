<%-- 
    Document   : problem.jsp
    Created on : Aug 1, 2016, 7:46:38 PM
    Author     : Lenovo G40
--%>

<%@page import="com.info.model.User"%>
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
        <title>Post Request</title>
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
            <a href="ProblemList">View Problem List</a>
            <br><br>
            <a href="notice.jsp">Post Notice</a>
            
        </form>
        <%
            } else{
                response.sendRedirect("login.jsp");
                }


        %>
         </div>
          <div id="content">
                     <div class="w3-card-8 w3-dark-grey" style=" box-sizing: content-box; border-radius: 8px; width: 645px; ">
                 
                <div id="bodyy_show_pro">
                    Post Request!
                    <br>
                    <br>
        <%
            Problem problem= (Problem)request.getAttribute("problem");
            
            if(problem==null){
                problem=new Problem();
                problem.setId(0);
                problem.setPname("");
                problem.setPdescription("");
                problem.setDepartment("");
                problem.setStatus(0);
                
            }
            
                
        %>
        <form action="ProblemServlet" method="post" >
            <input type="hidden" name="requestId" value="<%= problem.getId() %>">
       
            <span style="padding-right:81px;">
            Request: 
            </span>
            <input type="text" name="request" value="<%= problem.getPname() %>" style="width: 60%; border-radius: 5px"><br><br>
             <span>
            Request Description:
             </span><input type="text" name="request_description" value="<%= problem.getPdescription() %>" style="width: 60%; border-radius: 5px"><br><br>
             <span style="padding-right:55px;">
                 Department:
             </span>
             <input type="text" name="department" value="<%= problem.getDepartment() %>" style="width: 60%; border-radius: 5px"><br><br>
            <span>
                <%if(problem.getStatus()==0) {%>
                
                    <input type="submit" value="Add" name="Add"></span>
             <span>
                <%} else{%>
              
             <input type="submit" value="Update" name="update">
              </span>
           <% } %>
        </form>
                </div>
                     </div>
          </div>
        
    </body>
</html>
