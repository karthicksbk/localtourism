<%-- 
    Document   : userlist
    Created on : Oct 21, 2018, 4:13:05 AM
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
    padding: 10px;
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
    margin: 10% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
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
        <%@include file="homeadmin.jsp"%>
        <button onclick="document.getElementById('id03').style.display='block'" style="width:auto;">View User List</button>

<div id="id03" class="modal">
  

 <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" >
    <div class="container">
  <h1>Update Data </h1>
<table border="4" id="place">
<tr>
    <th>User Name</th>
    <th>User Email Id</th>
    <th>User Mobile Number</th>
   
 </tr> 
 
  <% try
{
    
    

    MyCon x=new MyCon();
 Connection c=x.tcon();
 PreparedStatement pst=c.prepareStatement("select * from register");


ResultSet rs=pst.executeQuery();
while(rs.next()){
    
    

%>
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("mob") %></td>



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



<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">View Places</button>

<div id="id02" class="modal">
  

 <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" >
    <div class="container">
  <h1>Places List </h1>
<table border="4" id="place">
<tr>
    <th>Place Id</th>
    <th>Place Name</th>
    <th>Place Address</th>
    <th>Distance</th>
    <th>Time to Reach</th>
    <th>Departure Time</th>
    <th>Available Seats</th>
    <th>Vehicle</th>
    
   
 </tr> 
 
  <% try
{
    
    

    MyCon x=new MyCon();
 Connection c=x.tcon();
 PreparedStatement pst=c.prepareStatement("select * from onetoone");


ResultSet rs=pst.executeQuery();
while(rs.next()){
    
    

%>
<tr>
<td><%=rs.getString("pid") %></td>
<td><%=rs.getString("pname") %></td>
<td><%=rs.getString("paddress") %></td>
<td><%=rs.getString("distance") %></td>
<td><%=rs.getString("time") %></td>
<td><%=rs.getString("dtime") %></td>
<td><%=rs.getString("available") %></td>
<td><%=rs.getString("vehicle") %></td>






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



<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">View Booked Users</button>

<div id="id01" class="modal">
  

 <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" >
    <div class="container">
  <h1>Booked User List </h1>
<table border="2" id="place">
<tr>
    <th>User Name</th>
    <th>User Email Id</th>
    <th>Mobile Number</th>
    <th>Place to Visit</th>
    <th>Vehicle</th>
    <th>Departure time</th>
    <th>Visiting Date</th>
    <th>Total No of People</th>
    <th>Amount</th>
   
 </tr> 
 
  <% try
{
    
    

    MyCon x=new MyCon();
 Connection c=x.tcon();
 PreparedStatement pst=c.prepareStatement("select * from confirm");


ResultSet rs=pst.executeQuery();
while(rs.next()){
    
    

%>
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("mob") %></td>
<td><%=rs.getString("pname") %></td>
<td><%=rs.getString("vehicle") %></td>
<td><%=rs.getString("dtime") %></td>
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

var modal2=document.getElementById('id03');
var modal3=document.getElementById('id02');


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target==modal2 || event.target==modal3) {
        modal.style.display = "none";
   
    }
}
</script>

    </body>
</html>
