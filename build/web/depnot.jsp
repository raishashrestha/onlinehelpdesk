<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" type="text/css" href="css/para.css">
<link rel="stylesheet" type="text/css" href="css/navigation.css">
<link rel="stylesheet" type="text/css" href="css/body.css">
<link rel="stylesheet" type="text/css" href="css/popdownbutton.css">  
<%@page import="com.info.model.User"%>
<%
                User verifiedUser=(User)session.getAttribute("verifiedUser");
                
                if(verifiedUser!=null){
                    out.println("Welcome"+verifiedUser.getUserName());
            %>
<%@page import="java.sql.*"%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <style>
               #notification {
    position:fixed;
        top:0px; /* Set to 0 or wherever */
        width:30%; /* set to 100% if space is available */
        z-index:105;
        margin-left: 200px; 
        text-align:center;
        font-weight:normal;
        font-size:14px;
        font-weight:bold;
        color:white;
        background:#ddd;
        padding:5px;
 }

            
        </style>
        <script>
            function notify123() {


               $("#notification").fadeIn(1000);
               $("#notification").delay(2000);
               $("#notification").fadeOut(1000);
    
            }

        </script>
        <body >
<%    
     Class.forName("com.mysql.jdbc.Driver");
            
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sairam","root","");
           

    
    try{
            
            String qry= "SELECT * FROM problem WHERE status = ? ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setInt(1,2);
            ResultSet rs = pst.executeQuery();
                while(rs.next()){
           %> 
           <div id="notification" style="display: none;"> 
		<div> <font color="red">You have a new request! </font></div>
                <form action="depviewreq.jsp" method="POST">
            <input type="hidden" name="pid" value="<%=rs.getInt("Pid")%>">
            <input type="hidden" name="pname" value="<%=rs.getString("Pname")%>">
            <input type="hidden" name="pdes" value="<%=rs.getString("Pdescription")%>">
            <input type="hidden" name="dep" value="<%=rs.getString("Department")%>">
            
            <input type="submit" name="View problem" value="View Problem" >
        </form> 
        </div>
          <script>notify123();  </script>   
           
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
  <%
            } else{
                response.sendRedirect("login.jsp");
                }


        %>