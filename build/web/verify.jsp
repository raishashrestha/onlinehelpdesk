<%-
    Document   : verify
    Created on : May 30, 2016, 5:10:50 PM
    Author     : Lenovo G40
-%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String uname,pass; %>
        <%
            uname=request.getParameter("uname");
            pass=request.getParameter("pass");
            if(uname.equals("raisha")&& pass.equals("rais"))
                     
        
            <jsp:forward page="welcome.jsp"/>
            else
                                        
                Wrong Username/Password,Try again!!!
                <jsp:include page="index.jsp"/>
            
        %>
                        
                      
    </body>
</html>
