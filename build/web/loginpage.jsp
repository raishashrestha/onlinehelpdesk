<%-- 
    Document   : loginpage
    Created on : Jun 6, 2016, 4:22:44 PM
    Author     : saurav man pradhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <form action="LoginServlet" method="get">
            <br> User Id: <input type="text" name="userId"/>
            <br> Password: <input type="password" name="password"/>
            <br> <input type="submit"/>
        </form>
    </body>
</html>