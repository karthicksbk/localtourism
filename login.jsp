<%-- 
    Document   : check
    Created on : Feb 2, 2018, 3:10:52 AM
    Author     : admin pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rasoi/title>
    </head>
    <body>
        <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
        String email,psw,name;
        email=request.getParameter("email");
        psw=request.getParameter("psw");
        
        PreparedStatement pst=c.prepareStatement("select name,email,psw from register where email=? and psw=?");
        
        pst.setString(1,email);
        pst.setString(2,psw);
       
        ResultSet rs=pst.executeQuery();
       
        
        if(rs.next()){
           //rs.getString("name");
            session.setAttribute("email",email);
            session.setAttribute("name",rs.getString("name"));
           
        response.sendRedirect("homeuser.jsp");
        }
        else if(email.equals("admin") && psw.equals("admin123")){
            session.setAttribute("email",email);
            
            response.sendRedirect("homeadmin.jsp");
        }
        
        else
        {
        response.sendRedirect("login.html?msg=Invalid Login Details");
        }
         
        
        
        %>
    </body>
</html>
