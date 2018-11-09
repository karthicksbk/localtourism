<%-- 
    Document   : register.jsp
    Created on : Oct 14, 2018, 3:09:37 PM
    Author     : karthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String psw=request.getParameter("psw");
            String rpsw=request.getParameter("rpsw");
            String mob=request.getParameter("mob");
            
           Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism","root","");
            Statement st=con.createStatement();
             int i=st.executeUpdate("insert into register values('"+name+"','"+email+"','"+psw+"','"+rpsw+"','"+mob+"')");
             if(i>0)
             {
                 response.sendRedirect("login.html");
             }
             %>
    </body>
</html>
