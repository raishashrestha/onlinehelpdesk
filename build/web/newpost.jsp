<%-- 
    Document   : newpost.jsp
    Created on : Aug 1, 2016, 7:46:38 PM
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
        <title>Post Request</title>
    </head>
    <body>
        <h1>Post Request!</h1>
        <form action="ProblemServlet" method="get">
            
       
            Request: <input type="text" name="request"><br><br>
            Request Description:<input type="text" name="request_description"><br><br>
            Department:<input type="text" name="department"><br><br>
            
            <input type="submit" name="Add" value="Add">
        
        
        </form>
    </body>
</html>
