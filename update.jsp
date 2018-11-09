<%-- 
    Document   : update
    Created on : Oct 21, 2018, 4:41:44 PM
    Author     : karthi
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pkg.MyCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
.container {
    padding: 20px;
    
    
}
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}
.signupbtn {
  float: middle;
  width: 100%;
}
#place {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#place td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#place tr:nth-child(even){background-color: #f2f2f2;}

#place tr:hover {background-color: #ddd;}

#place th {
    padding-top: 10px;
    padding-bottom: 10px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

</style>
    <body>
         <%@include file="homeadmin.jsp" %>
       <% String pid=request.getParameter("pid");
       out.println(""+pid);
       
      
               
    
         
                  try{
           MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select * from onetoone where pid=? ");
pst.setString(1,pid);

ResultSet rs = pst.executeQuery();

   

if(rs.next())
{
    
%>
<div class="container">
<form class="modal-content" action="updateprocess.jsp">
<hr>
<b><center>Update Element which you want <br><br></center>
    
    <label for="pid"><b>Place ID</b></label>
    <input type="text" name="pid" value="<%=rs.getString("pid")%>" required>
     <label for="pname"><b>Place Name</b></label>
    <input type="text" name="pname" value="<%=rs.getString("pname")%>" required>
    <label for="paddress"><b>Place Address</b></label>

    <input type="text" name="paddress" value="<%=rs.getString("paddress")%>"required>
     <label for="distance"><b>Distance Km from Madurai Periyar Bus Stand</b></label>

    <input type="text" name="distance" value="<%=rs.getString("distance")%>" required>
     <label for="time"><b>Time to Reach the Place</b></label>

    <input type="text" name="time" value="<%=rs.getString("time")%>" required>
     <label for="dtime"><b>Departure time </b></label>

      <input type="text" name="dtime" value="<%=rs.getString("dtime")%>" required>
     <label for="available"><b>Available Seats</b></label>

      <input type="text" name="available" value="<%=rs.getString("available")%>" required>
     <label for="vehicle"><b>Vehicle Type</b></label>

     
    <input type="text" name="vehicle" value="<%=rs.getString("vehicle")%>">
    
    <button type="submit" class="signupbtn">Update</button>
    
</form>
</div>
 <%  
}
}
catch(Exception e){
e.printStackTrace();
}



%>

    </body>
</html>
