<%-- 
    Document   : book
    Created on : Oct 23, 2018, 4:17:53 AM
    Author     : karthi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
        
        body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: yellow;
}

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
    <body>
         
        <% String pname=request.getParameter("pname");
        String pid=request.getParameter("pid");
  
    String pn,pi;
       
    String email=(String)session.getAttribute("email");
        String name=(String)session.getAttribute("name");
    if ((email == null) && (name== null) && (pname==null)) {
        
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







        <form action="confirm.jsp" method="post">
             <div class="container">
                 <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pname,pid,dtime from onetoone where pname='"+pname+"'");
PreparedStatement pst1=c.prepareStatement("select mob from register where email='"+email+"'");




ResultSet rs=pst.executeQuery();
ResultSet rs1=pst1.executeQuery();


if(rs.next())
{
    
   session.setAttribute("pname",rs.getString("pname"));
   session.setAttribute("pid",rs.getString("pid"));
   session.setAttribute("dtime",rs.getString("dtime"));
}
    

if(rs1.next())
{
    session.setAttribute("mob",rs1.getString("mob"));
    
}
}
catch(Exception ex)
{
    ex.printStackTrace();
}
%>


<label for="vehicle"><b>Vehicle</b></label><br>
<input type="radio" name="vehicle" value="bus" required>Bus<br>
<input type="radio" name="vehicle" value="car" required>Car<br>
<input type="radio" name="vehicle" value="van" required>Van<br>


Total no.of People:<br>
<label for="count"><b>Total no.of People</b></label>
<input type="text" name="count" required><br>
Date:<br>
<label for="date"><b>Date for Visiting</b></label>
<input type="date" name="date" data-date-inline-picker="true" />

      <input type="submit"  value="book"/>
      </div>
      </form>
            
          
        <% session.setAttribute("email",email);
session.setAttribute("name",name);}%>    
          
     
    </body>
</html>
