<%-- 
    Document   : bankpro
    Created on : Oct 27, 2018, 2:36:23 PM
    Author     : karthi
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% String cusname=request.getParameter("cusname");
       int cusid=Integer.parseInt(request.getParameter("cusid"));
       int acno=Integer.parseInt(request.getParameter("acno"));
       int dcard=Integer.parseInt(request.getParameter("dcard"));
       double balance=Double.parseDouble(request.getParameter("balance"));
       String mob=request.getParameter("mob");
        Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism","root","");
            Statement st=con.createStatement();
             int i=st.executeUpdate("insert into bankaccount values('"+cusid+"','"+cusname+"','"+acno+"','"+dcard+"','"+balance+"','"+mob+"')");
             
             if(i>0)
             {
                 out.println("inserted");
                 
             }
             %>
       
    </body>
</html>
