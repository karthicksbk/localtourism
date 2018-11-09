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
        <% String pid=request.getParameter("pid");
         String pname=request.getParameter("pname");
        String paddress=request.getParameter("paddress");
        String distance=request.getParameter("distance");
        String time=request.getParameter("time");
        String dtime=request.getParameter("dtime");
        String available=request.getParameter("available");
        String vehicle=request.getParameter("vehicle");
        try{
             MyCon x=new MyCon();
 Connection c=x.tcon();
 
 PreparedStatement pst=c.prepareStatement("update onetoone set pid=?,pname=?,paddress=?,distance=?,time=?,dtime=?,available=?,vehicle=? where pid='"+pid+"'");
 
 
 pst.setString(1,pid);
 pst.setString(2,pname);
 pst.setString(3,paddress);
 pst.setString(4,distance);
 pst.setString(5,time);
 pst.setString(6,dtime);
 pst.setString(7,available);
 pst.setString(8,vehicle);
 
int i = pst.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
response.sendRedirect("onepack.jsp");

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
