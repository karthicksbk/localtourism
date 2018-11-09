<%-- 
    Document   : onetoone
    Created on : Oct 14, 2018, 1:46:40 PM
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
        <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
        <%
            String pid=request.getParameter("pid");
            String pname=request.getParameter("pname");
            String paddress=request.getParameter("paddress");
            String distance=request.getParameter("distance");
            String time=request.getParameter("time");
            String vehicle=request.getParameter("vehicle");
            String dtime=request.getParameter("dtime");
            String available=request.getParameter("available");
            
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism","root","");
            Statement st=con.createStatement();
            int i=st.executeUpdate("insert into onetoone values('"+pid+"','"+pname+"','"+paddress+"','"+distance+"','"+time+"','"+dtime+"','"+available+"','"+vehicle+"')");
            %>
            
    </body>
</html>
