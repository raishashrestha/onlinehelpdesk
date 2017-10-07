<%-- 
    Document   : studentlist
    Created on : Aug 2, 2016, 6:03:48 PM
    Author     : Lenovo G40
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.info.model.Student"%>
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
        <title> Student List </title>
    </head>
    <body>
        <h1>Student List</h1>
        
        <%
            List<Student> StudentList=(ArrayList)request.getAttribute("StudentList");
            %>
            <table>
                <% for(Student student:StudentList) {%>
                <tr>
               <td><%= student.getRoll()%></td>
                    <td><%= student.getYear() %></td>
                    <td><%= student.getBatch() %></td>
                    <td><%= student.getName()%></td> 
                    <%}%>                   
                </tr>
                
                
                
                
            </table>
        
    </body>
</html>
