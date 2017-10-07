<%-- 
    Document   : postresponse
    Created on : Aug 7, 2016, 9:27:20 PM
    Author     : Lenovo G40
--%>

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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Post Response!</h1>
        <br><br>
        <form action="ProblemServlet" method="post">
            <% int id=Integer.parseInt( request.getParameter("id1"));%>
            <% String req= (request.getParameter("pname1"));%>
           <!--<input type="hidden" name="id" value="<%request.getParameter("id");%>">-->
        Response <input type="text" name="presponse">
        <input type="hidden" name="id" value="<%= id%>">
        <input type="hidden" name="req" value="<%= req%>">
        
        <input type="submit" name="Submit" value="Submit">
        </form>
    </body>
</html>
