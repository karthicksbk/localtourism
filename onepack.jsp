<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pkg.MyCon"%>
<!DOCTYPE html>
<html>
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
    <%@include file="homeadmin.jsp" %>
 

<h2>OneToOne Tour Pack Process</h2>

<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Add New </button>

<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="onetoone.jsp">
    <div class="container">
      <h1>Add New Places For OneToOne TourPack</h1>
      <p>Insert the record</p>
      <hr>
      <label for="pid"><b>Place ID</b></label>
      <input type="text" placeholder="Enter Place ID" name="pid" required>

      <label for="pname"><b>Place Name</b></label>
      <input type="text" placeholder="Enter Place Name" name="pname" required>

      <label for="address"><b>Place Address</b></label>
      <input type="text" placeholder="Place Address" name="paddress" required>
      
      <label for="distance"><b>Distance km</b></label>
      <input type="text" placeholder="Place Distance" name="distance" required>
      
      <label for="time"><b>Expected Time To Reach</b></label>
      <input type="text" placeholder="Time" name="time" required>
      
      <label for="vehicle"><b>Reached By Car/Bus/Van </b></label>
      <input type="text" placeholder="Reached By Car/Bus/Van" name="vehicle" required>
      
      <label for="dtime"><b>Departure time</b></label>
      <input type="text" placeholder="Departure Time" name="dtime" required>
      
       <label for="available"><b>Available Resource</b></label>
      <input type="text" placeholder="Available Resource" name="available" required>
      
      
      
      <p>By Inserting the Place Record Please Click Add<a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Add New</button>
      </div>
    </div>
  </form>
</div>



<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Update</button>

<div id="id02" class="modal">
  

 <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" >
    <div class="container">
  <h1>Update Data </h1>
<table border="2" id="place">
<tr>
    <th>Place id</th>
    <th>Place name</th>
    <th>Address</th>
    <th>Distance</th>
    <th>Time to Reach</th>
    <th>Departure Time</th>
    <th>Available Seats</th>
    <th>Vehicle</th>
    <th>Action</th>
 </tr> 
 
  <% try
{
    String id;
    

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

<td><a href="update.jsp?pid=<%=rs.getString("pid")%>">update</a></td>
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
var modal = document.getElementById('id01');
var modal1=document.getElementById('id02');




// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal||event.target==modal1 || event.target==modal2) {
        modal.style.display = "none";
   
    }
}
</script>

</body>
</html>
