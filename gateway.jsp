<%-- 
    Document   : gateway
    Created on : Oct 27, 2018, 3:33:42 PM
    Author     : karthi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="pkg.MyCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String mob=(String)session.getAttribute("mob");
        double amount=(Double)session.getAttribute("amount");
        String pid=(String)session.getAttribute("pid");
        
        
        int count=(Integer)session.getAttribute("count");
        
        
        String cusname=request.getParameter("cusname");
        String dcard=request.getParameter("dcard");
        double balance,balance1;
       
        int available,available1;
        try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select cusname,dcard,balance,mob from bankaccount where mob='"+mob+"'and dcard='"+dcard+"'");
PreparedStatement pst1=c.prepareStatement("select pid,pname,available from onetoone where pid='"+pid+"'");
ResultSet rs=pst.executeQuery();
ResultSet rs1=pst1.executeQuery();
if(rs.next()&& rs1.next()){
     balance=Double.parseDouble(rs.getString("balance"));
     if(balance<=0)
     {
         
         response.sendRedirect("payment.jsp");
     }
     else{
     available=Integer.parseInt(rs1.getString("available"));
     
     balance1=balance-amount;
     available1=available-count;
     
    PreparedStatement pst2=c.prepareStatement("update bankaccount set balance='"+balance1+"' where mob='"+mob+"'");
    PreparedStatement pst3=c.prepareStatement("update onetoone set available='"+available1+"' where pid='"+pid+"'");
int i=pst2.executeUpdate();
int j=pst3.executeUpdate();
if( i>0&&j>0 )
{
out.println("payment successfull and booking confirm");

response.sendRedirect("homeuser.jsp");



}    
else
{
    out.println("error");
}
     }  }

else
{
    out.println("error");
}
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }


%>



     
     
     
        
    </body>
</html>
