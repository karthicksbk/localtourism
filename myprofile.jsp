

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pkg.MyCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 20px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}


#place {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#place td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#place tr:nth-child(even){background-color: #f2f2f2;}

#place tr:hover {background-color: #ddd;}

#place th {
    padding-top: 10px;
    padding-bottom: 10px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}


</style>

    <body>
        <% String email=(String)session.getAttribute("email");
        String name=(String)session.getAttribute("name");%>
        <h1><%=name%> Profile</h1>
        
        <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select * from register where email='"+email+"'");

ResultSet rs=pst.executeQuery();
 
if(rs.next()){
    
%>

<b>User Name                     :</b>       <tr><%=rs.getString("name") %></tr><br><br>
<b>Email Id                      :</b>       <tr><%=rs.getString("email") %></tr><br><br>
<b>Mobile Number                 :</b>       <tr><%=rs.getString("mob") %></tr><br><br>
<b>Password                      :</b>       <tr><%=rs.getString("psw") %></tr><br><br>
<%}


} catch (Exception e) {
e.printStackTrace();
}
%>




<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Update</button>

<div id="id02" class="modal">
  

 <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="updateuserprocess.jsp" >
      
      
      
      
      
      <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select * from register where email='"+email+"'");

ResultSet rs=pst.executeQuery();
 
if(rs.next()){
     
%>



      
      
      
      
    <div class="container">
  <h1>Update Data </h1>
<label for="name"><b>User Name</b></label>
    <input type="text" name="name" value="<%=rs.getString("name")%>" required>
    
     <label for="email"><b>User Email Id</b></label>
    <input type="text" name="email" value="<%=rs.getString("email")%>" required>
    <label for="psw"><b>Password</b></label>

    <input type="password" name="psw" value="<%=rs.getString("psw")%>"required>
     <label for="rpsw"><b>Repeat Password</b></label>

    <input type="password" name="rpsw" value="<%=rs.getString("rpsw")%>" required>
     <label for="mob"><b>Mobile Number</b></label>

    <input type="text" name="mob" value="<%=rs.getString("mob")%>" required>
    <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
    <button type="submit" class="signupbtn">Update</button>
    
<div class="clearfix">
        
        
      </div>
</div>
    <%} }
catch(Exception ex){
ex.printStackTrace();
}%>
  </form>
</div>

  
  
  
  
  <button onclick="document.getElementById('id03').style.display='block'" style="width:auto;">My Travel</button>

<div id="id03" class="modal">
  

 <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" >
    <div class="container">
  <h1>Travel History </h1>
<table border="2" id="place">
<tr>
    
    <th>Place Id</th>
    <th>Place Name</th>
    <th>Departure Time</th>
    <th>Vehicle</th>
    <th>Date of Travelling</th>
    <th>Total People</th>
    <th>Amount</th>
   
 </tr> 
 
  <% try
{
    
    

    MyCon x=new MyCon();
 Connection c=x.tcon();
 PreparedStatement pst=c.prepareStatement("select pid,pname,dtime,vehicle,date,count,amount from confirm where email='"+email+"'");


ResultSet rs=pst.executeQuery();
while(rs.next()){
    
    

%>
<tr>
<td><%=rs.getString("pid") %></td>
<td><%=rs.getString("pname") %></td>
<td><%=rs.getString("dtime") %></td>
<td><%=rs.getString("vehicle") %></td>
<td><%=rs.getString("date") %></td>
<td><%=rs.getString("count") %></td>
<td><%=rs.getString("amount") %></td>





</tr>

<%}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<div class="clearfix">
        
        
      </div>
</div>
  </form>
</div>




  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

<script>
// Get the modal

var modal1=document.getElementById('id02');




// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal1) {
        modal.style.display = "none";
   
    }
}
</script>





      

      
    </body>
</html>
