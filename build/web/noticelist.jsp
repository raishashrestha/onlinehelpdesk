<%-- 
    Document   : noticelist
    Created on : Aug 4, 2016, 10:04:28 PM
    Author     : Lenovo G40
--%>

<%@page import="com.info.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.info.model.Notice"%>
<%@page import="java.util.List"%>
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
        <title>Notice List</title>
    </head>
    <jsp:include page="header.jsp" />
        
        
        <div id="overhead">
            <button style="padding-top: 70px " >
        <%
                User verifiedUser=(User)session.getAttribute("verifiedUser");
                
                if(verifiedUser!=null){
                    out.println("Welcome "+verifiedUser.getUserName());
            %>
            </button>
        </div>
            
           
         <div> 
       
       
            
        </form>
         <%
            } else{
                response.sendRedirect("login.jsp");
                }


        %>
      
        
    <div id="content" >
    
                          <%
                List<Notice> NoticeList=(ArrayList)request.getAttribute("NoticeList");
                %>
                  
                    <div class="w3-card-8 w3-dark-grey" style=" box-sizing: content-box; border-radius: 8px; width: 645px; ">

                
                    <div id="bodyy_notice">
                         <form>
                             <table>

                                    <tr>
                                        <th> <span style="padding-left: 25px;padding-right: 15px; padding-top: 15px;">  ID</span></th>
                                        <th> <span style="padding-left: 15px;padding-right: 25px; padding-top: 15px;">Notice</span></th>
                                        <th ><span style="padding-left: 25px;padding-right: 25px; padding-top: 15px;">Department</span></th>
                                        <th> <span style="padding-left: 25px;padding-right: 25px; padding-top: 15px;"> Year</span></th>
                                        <th> <span style="padding-left: 25px;padding-right: 25px; padding-top: 15px;"> Date Of Published </span></th>
                                    </tr>
                                        <% for(Notice notice :NoticeList) {%>
                                    <tr>

                                    <td ><span style="padding-left: 25px"><%= notice.getNid()%></span></td>
                                    <td><span style="padding-left: 5px; width:50px;"><%= notice.getNotice()%></span></td>
                                    <td><span style="padding-left: 50px"><%= notice.getDepartment()%></span></td>
                                    <td><span style="padding-left: 30px"><%= notice.getYear()%></span></td>
                                    <td><span style="padding-left: 30px"><%= notice.getDate_published()%></span></td>
                                                                           <%}%>                   
                                    </tr>                
                </table>

                         </form>
            </div>
                    </div>
    </div>
                                    <p style="clear:both;" />           
</div>
<!--<div class="lower-layer" style="opacity: 0; padding-top: 740px;">
        </div>-->
<!--<footer style="background:black; margin:0px;">
<div class="footer" style="position:absolute; margin-top: 780px; background: black; margin-left: 0px;margin-right:0px;">
              <button style="border-bottom: 1px solid #EEE;margin-left:5px; text-align: left;">Contact Us</button>       
             <a href="About.jsp"> <span>About Us</span></a>
             <p style="margin:0px; color:white; margin-left: 5px;">
                 9841775543
                 <br>
                 9841233677
             </p>
                
            
</footer>-->
<!--            </div>-->
            </div>   
        

<!--
            <table>
                <% for(Notice notice :NoticeList) {%>
                <tr>
                    <td><%= notice.getNid()%></td>
                    <td><%= notice.getNotice()%></td>
                    <td><%= notice.getDepartment()%></td>
                    <td><%= notice.getYear()%></td>
                    <td><%= notice.getDate_published()%></td>
                 <%}%>                   
                </tr>
                
                
                
                
            </table>-->
        
    
</html>
