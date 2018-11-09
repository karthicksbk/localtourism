<%-- 
    Document   : ticket
    Created on : Oct 22, 2018, 3:05:54 PM
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
        
        
        
        
        <%
              
        String pname=(String)session.getAttribute("pname");
        String pid=(String)session.getAttribute("pid");
        String dtime=(String)session.getAttribute("dtime");
        
        String mob=(String)session.getAttribute("mob");
        String email=(String)session.getAttribute("email");
        String name=(String)session.getAttribute("name");
        String date=(String)session.getAttribute("date");
    
if((pname==null) && (mob==null) && (email==null) && (name==null)){%>
<a href="homeuser.jsp">Please book here</a>
        
  <%} else {
        
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



      
      
        <h1>Ticket For your Travelling</h1>
        <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select * from confirm where email='"+email+"'and pname='"+pname+"' and date='"+date+"'");


ResultSet rs=pst.executeQuery();
if(rs.next()){
    
%>

<b>User Name                     :</b>       <tr><%=rs.getString("name") %></tr><br><br>
<b>Email Id                      :</b>       <tr><%=rs.getString("email") %></tr><br><br>
<b>Mobile Number                 :</b>       <tr><%=rs.getString("mob") %></tr><br><br>
<b>Place Id                      :</b>       <tr><%=rs.getString("pid") %></tr><br><br>
<b>Place to Visit                :</b>       <tr><%=rs.getString("pname") %></tr><br><br>
<b>Vehicle                       :</b>       <tr><%=rs.getString("vehicle") %></tr><br><br>
<b>Date of Visiting              :</b>       <tr><%=rs.getString("date") %></tr><br><br>
<b>Time of Visiting              :</b>       <tr><%=rs.getString("dtime") %></tr><br><br>
<b>Total count of People         :</b>       <tr><%=rs.getString("count") %></tr><br><br>
<b>Amount for travelling         :</b>       <tr><%=rs.getString("amount") %></tr><br><br>
<B>Boarding Point                :</b>    Madurai Periyar Bus Stand, Madurai.
<%
    session.setAttribute("mob",mob);
    session.setAttribute("name",name);
session.setAttribute("pid",pid);%>
<a href="payment.jsp?amount=<%=rs.getString("amount")%>&count=<%=rs.getString("count")%>"> Make a Payment</a>
<%}
} catch (Exception e) {
e.printStackTrace();
}


}
%>
      

     
    </body>
</html>
