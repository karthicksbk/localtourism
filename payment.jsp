<%-- 
    Document   : payment
    Created on : Oct 27, 2018, 4:49:25 PM
    Author     : karthi
--%>

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
        <% String mob=(String)session.getAttribute("mob");
    String name=(String)session.getAttribute("name");
    
    
        double amount=Double.parseDouble(request.getParameter("amount"));
        int count=Integer.parseInt(request.getParameter("count"));
        
        String pid=(String)session.getAttribute("pid");
        
        if(mob == null) {%>
        
         <a href="homeuser.jsp">Click her to book</a>
                    
        
        <% }else {%>
        
        
        
        
        <form action="gateway.jsp">
            <% session.setAttribute("mob",mob);
            session.setAttribute("pid", pid);
            session.setAttribute("amount",amount);
            session.setAttribute("count",count);
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


            
            
            
            <h1><b>Paymet Process</b></h1>
        <label for="cusname"><b>Customer name</b><br>
        <input type="text" name="cusname" value="<%=name%>"><br><br>
        <label for="dcard"><b>Debit card Number</b><br>
        <input type="text" name="dcard" placeholder="Enter your debit card number"><br><br>
        <label for="mob"><b>Your Mobile Numebr</b><br>
        <input type="text" name="mob" value="<%=mob%>" ><br><br>
        <label for="amount"><b>Total Amount</b><br>
        <input type="text" name="amount" value="<%=amount%>"><br><br>
        <label for="count"><b>Total No.of People</b><br>
        <input type="text" name="count" value="<%=count%>"><br><br>
        <input type="submit" value="click to proceed">
        
</form>


    
       <%}%>
       
    </body>
</html>
