<%-- 
    Document   : studentform
    Created on : Aug 2, 2016, 6:52:35 PM
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
        <title>Student form</title>
    </head>
    <body>
        
        
        <%
                User verifiedUser=(User)session.getAttribute("verifiedUser");
                
                if(verifiedUser!=null){
                    //out.println("Welcome"+verifiedUser.getUserName());
            %>
            <div id="content" style="margin-top:95px;">
        
        
            <div class="w3-card-8 w3-dark-grey" style=" box-sizing: content-box; border-radius: 8px; width: 645px; ">
                 
                <div id="bodyy_postreq">
         <form action ="StudentServlet" method="post">
                         <span style="font-size:32px;">Student Form!</span><br>
                         <span style="padding-right:85px;"> 
             <span>
                 Student Name:
             </span>
             <input type="text" name="studentName" style="padding-right:10px"><br><br>
             
             <span>
                 Student Roll :
             </span>
             <input type="text" name="studentRoll" style="padding-right:10px"><br><br>
                Year:<input type="text" name="year"><br><br>
                Batch:<input type="text" name="batch"><br><br>
                
                     <input type="submit" value="Add">
        </form>
            
          
        </div>
       
        </form>
          <%
            } else{
                response.sendRedirect("login.jsp");
                }


        %>
    </body>
</html>
