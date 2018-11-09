<%-- 
    Document   : confirm
    Created on : Oct 20, 2018, 3:19:36 PM
    Author     : karthi
--%>



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="pkg.MyCon"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
          <%
              
        String pname=(String)session.getAttribute("pname");
        String pid=(String)session.getAttribute("pid");        
        String mob=(String)session.getAttribute("mob");
        String email=(String)session.getAttribute("email");
        String name=(String)session.getAttribute("name");
        String dtime=(String)session.getAttribute("dtime");
    
if((pname==null) && (mob==null) && (email==null) && (name==null)){%>
<a href="natureuser.jsp">Please book here</a>
        
  <%} else {


        String vehicle=request.getParameter("vehicle");
        String date=request.getParameter("date");
       
        
        int count = Integer.parseInt(request.getParameter("count"));
        double amount=count*100;

          
            MyCon x=new MyCon();
            Connection c=x.tcon();
            Statement st=c.createStatement();
             int i=st.executeUpdate("insert into confirm values('"+name+"','"+email+"','"+mob+"','"+pid+"','"+pname+"','"+dtime+"','"+vehicle+"','"+date+"','"+count+"','"+amount+"')");
             if(i>0)
{
session.setAttribute("name",name);
session.setAttribute("pname",pname);
session.setAttribute("email",email);
session.setAttribute("mob",mob);
session.setAttribute("dtime",dtime);
session.setAttribute("date",date);
response.sendRedirect("ticket.jsp");


}

}
  %>
    </body>
</html>
