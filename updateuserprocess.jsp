<%-- 
    Document   : updateprocess
    Created on : Oct 22, 2018, 1:18:15 PM
    Author     : karthi
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="pkg.MyCon"%>
<%@page import="pkg.MyCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String name=request.getParameter("name");
         String email=request.getParameter("email");
        String psw=request.getParameter("psw");
        String rpsw=request.getParameter("rpsw");
        String mob=request.getParameter("mob");
        
        try{
             MyCon x=new MyCon();
 Connection c=x.tcon();
 
 PreparedStatement pst=c.prepareStatement("update register set name=?,email=?,psw=?,rpsw=?,mob=? where email='"+email+"'");
 
 
 pst.setString(1,name);
 pst.setString(2,email);
 pst.setString(3,psw);
 pst.setString(4,rpsw);
 pst.setString(5,mob);
 
 
int i = pst.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
response.sendRedirect("myprofile.jsp");

}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(Exception sql)
{
request.setAttribute("error", sql);
out.println(sql);
}

%> 

        
    </body>
</html>
