<%-- 
    Document   : update_problem
    Created on : Aug 5, 2016, 2:10:02 PM
    Author     : Lenovo G40
--%>

<%@page import="java.sql.*"%>
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
        <h1>Hello World!</h1>
        <%
            
              int id = Integer.parseInt(request.getParameter("pid"));
          
                      Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tryy","root","");
           

             String qry12="update problem set status=? where Pid=?";
            PreparedStatement pst12= con.prepareStatement(qry12);
            pst12.setInt(1,2);
            pst12.setInt(2,id);
            pst12.executeUpdate();
            pst12.close();


        %>
    </body>
</html>
