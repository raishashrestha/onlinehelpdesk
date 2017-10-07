<%-- 
    Document   : show_problem
    Created on : Aug 5, 2016, 1:39:08 PM
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
<link rel="stylesheet" type="text/css" href="css/footer.css">
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
            pst.setInt(2,1);
            
            ResultSet rs = pst.executeQuery();
                while(rs.next()){
            


                %> 
                 
                <div id="head" style="overflow: visible;">
                 <ul class="head" >
                        <li class="head" >
                            <span>
                        College Online Help Desk        
                            </span>
                        </li>
                        <li class="head" style="padding-left:150px; padding-right:10px;">
                            <a href="logout.jsp">
                                <span>Logout</span>
                            </a>
                        </li>
                        
                 </ul>
          </div>
        
                
                <div id="content" style="margin-top: 100px;">
                     <div class="w3-card-8 w3-dark-grey" style=" box-sizing: content-box; border-radius: 8px; width: 645px; ">
                 
                <div id="bodyy_show_pro">
                    Show Problem
                    <br>
                    <br>
                <form action="Test" method="post">     
                    <span style="padding-right:81px;">
                    Request: 
                    </span>
                        <input type="text" name="pname" valtue="<%=rs.getString("Pname")%>" style="width: 60%;border-radius: 5px;"><br><br>
                    <span>
                    Request description: 
                    </span>
                        <input type="text" name="pdes" value="<%=rs.getString("Pdescription")%>" style="width: 60%; border-radius: 5px"><br><br>
                    <span style="padding-right:55px">
                    Department:
                    </span>
                        <input type="text" name="dep" value="<%=rs.getString("Department")%>" style="width: 60% ; border-radius: 5px"><br><br>
                                                   
                    <input type="hidden" name="id1" value="<%= id%>">
                    <input type="hidden" name="pname1" value="<%= problem%>">
                    <input type="hidden" name="pdes1" value="<%= pdescrip%>">
                    <input type="hidden" name="pdep1" value="<%= pdep%>">
                    
                
                    <!--<a href="ProblemServlet?RequestIdforApproval=<%=id%>">OK</a>-->
                    <span style="padding: 15px;">    <a href="ProblemServlet?RequestIdforEdit=<%=id %>"> Edit </a></span>
                    <span style="padding: 15px;"><a href="ProblemServlet?RequestIdforDelete=<%= id %>"> Delete </a></span>
                </form>    
                    
                    </div>    
                   
        </div>
            </div>
     <div id="bodyy_hidden">
                    
                </div>
            </div>
        </div>
<!--        <p style="clear:both;" />           -->
        <div></div>
        
<!--      <footer style="background:black; margin-bottom:0px;">
<div class="footer" style="float:left; width:100%;">
              <button style="border-bottom: 1px solid #EEE;margin-left:5px; text-align: left;">Contact Us</button>       
             <a href="About.jsp"> <span style="padding-left:20px;">About Us</span></a>
             <p style="margin:0px; color:white; margin-left: -80px;">
                 9841775543
                 <br>
                 9841233677
             </p>
                
</div>          -->
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
