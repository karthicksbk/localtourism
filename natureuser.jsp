<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="pkg.MyCon"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing:border-box;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.container {
  padding: 64px;
}

.row:after {
  content: "";
  display: table;
  clear: both
}

.column-66 {
  float: left;
  width: 66.66666%;
  padding: 20px;
}

.column-33 {
  float: left;
  width: 33.33333%;
  padding: 20px;
}

.large-font {
  font-size: 48px;
}

.xlarge-font {
  font-size: 64px
}

.button {
  border: none;
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  background-color: #4CAF50;
}

img {
  display: block;
  height: auto;
  max-width: 100%;
}

@media screen and (max-width: 1000px) {
  .column-66,
  .column-33 {
    width: 100%;
    text-align: center;
  }
  img {
    margin: auto;
  }
}


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
</head>
<body>
    
<%
        String email=(String)session.getAttribute("email");
        String name=(String)session.getAttribute("name");
    if ((email == null)) {
        
%> 
<a href="login.html">Please Login Here</a>
<% } else {


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








<div style="text-align:center">
  <h2>Nature Placs of Madurai</h2>
  
</div>

<!-- The App Section -->

<div class="container">
  <div class="row">
    <div class="column-66">
      
      <h1 class="large-font" style="color:MediumSeaGreen;"><b>Kudladam patti falls</b></h1>
      <p><span style="font-size:36px">Take photos like a pro.</span> Kutladampatti Falls is a waterfall located in the village of Kutladampatti near Vadipatti in Madurai district about 30 km (19 mi) northwest of Madurai, Tamil Nadu, India.[1] The waterfall is in a reserve forest managed by the Tamil Nadu Forest Department.[2] The water falls from a height of about 27 metres (89 ft).[2] </p>
      
      
      
      
      
     
       <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pid,pname,paddress,distance,time,dtime,available,vehicle from onetoone where pname='Kutladampatti'");


ResultSet rs=pst.executeQuery();
while(rs.next()){
     
%>

   
       
      <% String pname;%>
 <b>Place Id </b>:<tr><%=rs.getString("pid") %></tr><br>
<b>Place Name </b>:<tr><%=rs.getString("pname") %></tr><br>
<b>Address :</b><tr><%=rs.getString("paddress") %></tr><br>
<b>Distance </b>(from Madurai Periyar Bus stand ) :<tr><%=rs.getString("distance") %></tr><br>
<b>Average Time to Reach :</b><tr><%=rs.getString("time") %></tr><br>
<b>To Reach By :</b><tr><%=rs.getString("vehicle") %></tr><br>
<b>Departure Time</b><tr><%=rs.getString("dtime") %></tr><br>
<b>Available Seats</b><tr><%=rs.getString("available") %></tr><br>
<a href="book.jsp?pname=<%=rs.getString("pname")%>&dtime=<%=rs.getString("dtime")%>&pid<%=rs.getString("pid")%> ">Clickhere To book</a>






<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>
      
      
      
      
      
      
      
      
      <button class="button">Gallery</button>
      
    </div>
    <div class="column-33">
        <img src="images\kudladampatti.jpg" width="335" height="471">
    </div>
  </div>
</div>



<!-- Clarity Section -->

<div class="container" style="background-color:#f1f1f1">
  <div class="row">
    <div class="column-33">
      <img src="images\suruli.jpg" alt="App" width="335" height="471">
    </div>
    <div class="column-66">
      
      <h1 class="large-font" style="color:red;"><b>Suruli Falls</b></h1>
      <p><span style="font-size:24px">A revolution in resolution.</span> Suruli falls, is located 56 km (35 mi) from Theni and 10 km (6.2 mi) from Cumbum in the Theni District in Tamil Nadu, India. It is a 2 stage Cascading water fall. The Suruli River supplying the falls originates from the Meghamalai mountain range. The falls drop from a height of 150 feet (46 m) gathers into a pool, flows for a short distance and again plummets an additional 40 feet (12 m). </p>
     
      
      
      
      
      
      <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pid,pname,paddress,distance,time,dtime,available,vehicle from onetoone where pname='Suruli falls'");

ResultSet rs=pst.executeQuery();
while(rs.next()){
    
%>
<% String pname;%>
<b>Place Id </b>:<tr><%=rs.getString("pid") %></tr><br>
<b>Place Name </b>:<tr><%=rs.getString("pname") %></tr><br>
<b>Address :</b><tr><%=rs.getString("paddress") %></tr><br>
<b>Distance </b>(from Madurai Periyar Bus stand ) :<tr><%=rs.getString("distance") %></tr><br>
<b>Average Time to Reach :</b><tr><%=rs.getString("time") %></tr><br>
<b>To Reach By :</b><tr><%=rs.getString("vehicle") %></tr><br>
<b>Departure Time</b><tr><%=rs.getString("dtime") %></tr><br>
<b>Available Seats</b><tr><%=rs.getString("available") %></tr><br>

<a href="book.jsp?pname=<%=rs.getString("pname")%>&dtime=<%=rs.getString("dtime")%>&pid=<%=rs.getString("pid")%> ">Clickhere To book</a>

<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>
      
      
      
      
      
      
      
      
      
      <button class="button">Gallery</button>
     
    </div>
  </div>
</div>
<!-- The App Section -->

<div class="container">
  <div class="row">
    <div class="column-66">
      
      <h1 class="large-font" style="color:MediumSeaGreen;"><b>Sirumalai</b></h1>
      <p><span style="font-size:36px">Take photos like a pro.</span> Sirumalai  is a region of 60,000 acres (200 km2) situated 25 km (16 mi) from Dindigul and 90 km (56 mi) from Madurai,Tamil Nadu, India. There are many high hills in the area.[1][2][3][4] Hillock International School is located in Sirumalai.[5] Sirumalai is a dense forest region with a moderate climate throughout the year. With an altitude of 1600 metres above sea level, it contains diversified flora and fauna. The hill has 18 hairpin bends. On the 18th bend is a church and a view point of Dindigul city and the "Dindigul Rock Fort". The hill contains a small waterfall as well. The famous Sirumalai banana is slowly disappearing from disease, which scientists have been unable to prevent.[6] </p>
       
      
      
      
      <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pid,pname,paddress,distance,time,dtime,available,vehicle from onetoone where pname='Sirumalai'");

ResultSet rs=pst.executeQuery();
while(rs.next()){
    
%>
<% String pname;%>
<b>Place Id </b>:<tr><%=rs.getString("pid") %></tr><br>
<b>Place Name </b>:<tr><%=rs.getString("pname") %></tr><br>
<b>Address :</b><tr><%=rs.getString("paddress") %></tr><br>
<b>Distance </b>(from Madurai Periyar Bus stand ) :<tr><%=rs.getString("distance") %></tr><br>
<b>Average Time to Reach :</b><tr><%=rs.getString("time") %></tr><br>
<b>To Reach By :</b><tr><%=rs.getString("vehicle") %></tr><br>
<b>Departure Time</b><tr><%=rs.getString("dtime") %></tr><br>
<b>Available Seats</b><tr><%=rs.getString("available") %></tr><br>

<a href="book.jsp?pname=<%=rs.getString("pname")%>&dtime=<%=rs.getString("dtime")%>&pid=<%=rs.getString("pid")%> ">Clickhere To book</a>

<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>


      
      
      
      
      
      
      <button class="button">Gallery</button>
     
    </div>
    <div class="column-33">
        <img src="images\sirumalai.jpg" width="335" height="471" >
    </div>
  </div>
</div>

<!-- Clarity Section -->

<div class="container" style="background-color:#f1f1f1">
  <div class="row">
    <div class="column-33">
     <img src="images\kumbakarai.jpg" alt="App" width="335" height="471">
    </div>
    <div class="column-66">
      
      <h1 class="large-font" style="color:red;"><b>Kumbakarai Falls</b></h1>
      <p><span style="font-size:24px">A revolution in resolution.</span> Suruli falls, is located 56 km (35 mi) from Theni and 10 km (6.2 mi) from Cumbum in the Theni District in Tamil Nadu, India. It is a 2 stage Cascading water fall. The Suruli River supplying the falls originates from the Meghamalai mountain range. The falls drop from a height of 150 feet (46 m) gathers into a pool, flows for a short distance and again plummets an additional 40 feet (12 m). </p>
     
      
      
      
      
      
      <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pid,pname,paddress,distance,time,dtime,available,vehicle from onetoone where pname='Kumbakarai falls'");

ResultSet rs=pst.executeQuery();
while(rs.next()){
    
%>
<% String pname;%>
<b>Place Id </b>:<tr><%=rs.getString("pid") %></tr><br>
<b>Place Name </b>:<tr><%=rs.getString("pname") %></tr><br>
<b>Address :</b><tr><%=rs.getString("paddress") %></tr><br>
<b>Distance </b>(from Madurai Periyar Bus stand ) :<tr><%=rs.getString("distance") %></tr><br>
<b>Average Time to Reach :</b><tr><%=rs.getString("time") %></tr><br>
<b>To Reach By :</b><tr><%=rs.getString("vehicle") %></tr><br>
<b>Departure Time</b><tr><%=rs.getString("dtime") %></tr><br>
<b>Available Seats</b><tr><%=rs.getInt(7) %></tr><br>

<a href="book.jsp?pname=<%=rs.getString("pname")%>&dtime=<%=rs.getString("dtime")%>&pid=<%=rs.getString("pid")%> ">Clickhere To book</a>

<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>
      
      
      
      
      
      
      
      
      
      <button class="button">Gallery</button>
     
    </div>
  </div>
</div>
<% session.setAttribute("email",email);
session.setAttribute("name",name);}%>

</body>
</html>
