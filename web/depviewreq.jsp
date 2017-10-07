<%-- 
    Document   : depviewreq
    Created on : Aug 7, 2016, 9:06:59 PM
    Author     : Lenovo G40
--%>

<%@page import="com.info.model.Problem"%>
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
        <script>
    function submitForm(action)
    {
        document.getElementById('columnarForm').action = action;
        document.getElementById('columnarForm').submit();
    }
</script>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("pid"));
            String problem= request.getParameter("pname");
            String pdescrip=request.getParameter("pdes");
            String pdep=request.getParameter("dep");
            
          Class.forName("com.mysql.jdbc.Driver");
            
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sairam","root","");
           

    
    try{
            
            String qry= "SELECT * FROM problem WHERE Pid =? AND status = ? ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setInt(1,id);
            pst.setInt(2,2);
            
            ResultSet rs = pst.executeQuery();
                while(rs.next()){
            


                %> 
                
                <form action="postresponse.jsp" method="post">     
                    Request: <input type="text" name="pname" value="<%=rs.getString("Pname")%>"  style="width: 60%;"><br><br>
                    Request description: <input type="text" name="pdes" value="<%=rs.getString("Pdescription")%>"  style="width: 60%;"><br><br>
                    Department: <input type="text" name="dep" value="<%=rs.getString("Department")%>"  style="width: 60%;"><br><br>
                                                      
                    <input type="hidden" name="id1" value="<%= id %>">
                    <input type="hidden" name="pname1" value="<%= problem %>">
                    <input type="hidden" name="pdes1" value="<%= pdescrip %>">
                    <input type="hidden" name="pdep1" value="<%= pdep %>">
                    
                    <input type="submit" name="Post Response" value="Post Response">
                   
                </form>    
                    
                                 
                  
    <div id="columnarForm"></div>
    
        
        <%
                  }
            
        }
               
                            
        catch(Exception e){
            
            e.printStackTrace();
        }
        
        finally{
            con.close();
        }
 
        
        %>
    </body>
</html>
