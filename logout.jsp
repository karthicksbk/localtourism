<%-- 
    Document   : logout
    Created on : Oct 23, 2018, 10:07:00 AM
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
        <%
session.invalidate();
response.sendRedirect("homepage.html");
%>
    </body>
</html>
