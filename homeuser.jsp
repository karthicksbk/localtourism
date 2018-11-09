<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="pkg.MyCon"%>
<%@page import="pkg.MyCon"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
   
.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
</head>
<body>

   <%
        String email=(String)session.getAttribute("email");
        String name=(String)session.getAttribute("name");
    if ((email == null)) {
        
%> 
<a href="login.html">Please Login Here</a>
<% } else {


%>

<div class="navbar">
  <a href="homeuser.jsp">Home</a>
  
  
  
  
   <div class="dropdown">
    <button class="dropbtn">Tour Pack
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="natureuser.jsp">Nature</a>
      <a href="spiritualuser.jsp">Spiritual</a>
      
    </div>
  </div> 
  
  
  
  <a href="myprofile.jsp"><%=name%></a>
  <a href="logout.jsp">logout</a> 
</div>


<%
    
    session.setAttribute("email",email);
    session.setAttribute("name",name);
}
%>

</body>
</html>
