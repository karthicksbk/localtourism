<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
  <h2>Spiritual Places of Madurai</h2>
  
</div>

<!-- The App Section -->
<div class="container">
  <div class="row">
    <div class="column-66">
      
      <h1 class="large-font" style="color:midnightblue;"><b>Meenakshi Amman Temple</b></h1>
      <p><span style="font-size:16px" "color:grey"> Meenakshi Temple, also referred to as Meenakshi Amman or Minakshi-Sundareshwara Temple, is a historic Hindu temple located on the southern bank of the Vaigai River in the temple city of Madurai, Tamil Nadu, India. It is dedicated to Meenakshi, a form of Parvati, and her consort, Sundareshwar, a form of Shiva. The temple is at the center of the ancient temple city of Madurai mentioned in the Tamil Sangam literature, with the goddess temple mentioned in 6th century CE texts.</span></p>
      
     
      <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pid,pname,paddress,distance,time,dtime,available,vehicle from onetoone where pname='Meenakshi Amman Temple'");

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
        <img src="images\madurai-27.jpg" width="335" height="471">
    </div>
  </div>
</div>

<!-- Clarity Section -->
<div class="container" style="background-color:#f1f1f1">
  <div class="row">
    <div class="column-33">
     <img src="images\azagartemple.jpg" alt="App" width="335" height="471">
    </div>
    <div class="column-66">
      
      <h1 class="large-font" style="color:red;"><b>Azagar Temple</b></h1>
      <p><span style="font-size:24px">A revolution in resolution.</span> Alagar koyil is a village in Madurai district in the South Indian state of Tamil Nadu. The history and living of the village is centered around Kallazhagar Temple. Constructed in the Dravidian style of architecture, the temple is glorified in the Divya Prabandha, the early medieval Tamil canon of the Azhwar saints from the 6th?9th centuries AD. It is one of the 108 Divyadesam dedicated to Vishnu, who is worshipped as Kallazhagar and his consort Lakshmi as Thirumamagal.</p>
      
      
          <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pid,pname,paddress,distance,time,dtime,available,vehicle from onetoone where pname='Alagar temple'");

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
      
      <h1 class="large-font" style="color:MediumSeaGreen;"><b>Tiruparankundram</b></h1>
      <p><span style="font-size:36px">Take photos like a pro.</span> Tiruppara?ku??am is a suburb in Madurai district in Tamil Nadu, India. The area is part of Madurai Municipal Corporation and the first local body election for the corporation was held on 18 October 2011. Tiruppara?ku??am is known for the Thirupparamkunram Murugan temple, which is one of the Six Abodes of Murugan. It is one of the most visited tourist places in Madurai, next only to the Meenakshi Amman Temple. The Tirupparankunram Dargah is located atop the Tirupparankunram Hill.</p>
       
          <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pid,pname,paddress,distance,time,dtime,available,vehicle from onetoone where pname='Thiruparankundram temple'");

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
        <img src="images\tiruparan.jpg" width="335" height="471" >
    </div>
  </div>
</div>

<!-- Clarity Section -->
<div class="container" style="background-color:#f1f1f1">
  <div class="row">
    <div class="column-33">
      <img src="images\teppakulam.jpg" alt="App" width="335" height="471">
    </div>
    <div class="column-66">
      
      <h1 class="large-font" style="color:red;"><b>Teppakulam</b></h1>
      <p><span style="font-size:24px">A revolution in resolution.</span> Alagar koyil is a village in Madurai district in the South Indian state of Tamil Nadu. The history and living of the village is centered around Kallazhagar Temple. Constructed in the Dravidian style of architecture, the temple is glorified in the Divya Prabandha, the early medieval Tamil canon of the Azhwar saints from the 6th?9th centuries AD. It is one of the 108 Divyadesam dedicated to Vishnu, who is worshipped as Kallazhagar and his consort Lakshmi as Thirumamagal.</p>
      
      
          <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pid,pname,paddress,distance,time,dtime,available,vehicle from onetoone where pname='Teppakulam Mariamman Temple'");

ResultSet rs=pst.executeQuery();
while(rs.next()){
    
%>
<% String pname;%>
<b>Place Id </b>:<tr><%=rs.getString("pid") %></tr><br>
<b>Place Name </b>:<tr><%=rs.getString("pname") %></tr><br>
<b>Address :</b><tr><%=rs.getString("paddress") %></tr><br>
<b>Distance </b>(from Madurai Periyar Bus stand ) :<tr><%=rs.getString("distance") %></tr><br>
<b>Average Time to Reach :</b><tr><%=rs.getString("time") %></tr><br>
<b>Departure Time</b><tr><%=rs.getString("dtime") %></tr><br>
<b>Available Seats</b><tr><%=rs.getString("available") %></tr><br>

<b>To Reach By :</b><tr><%=rs.getString("vehicle") %></tr><br>

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






















<div class="container">
  <div class="row">
    <div class="column-66">
      
      <h1 class="large-font" style="color:MediumSeaGreen;"><b>Koodal Alagar Teimple</b></h1>
      <p><span style="font-size:36px">Take photos like a pro.</span> Tiruppara?ku??am is a suburb in Madurai district in Tamil Nadu, India. The area is part of Madurai Municipal Corporation and the first local body election for the corporation was held on 18 October 2011. Tiruppara?ku??am is known for the Thirupparamkunram Murugan temple, which is one of the Six Abodes of Murugan. It is one of the most visited tourist places in Madurai, next only to the Meenakshi Amman Temple. The Tirupparankunram Dargah is located atop the Tirupparankunram Hill.</p>
       
          <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pid,pname,paddress,distance,time,dtime,available,vehicle from onetoone where pname='Koodal alagar temple'");

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
        <img src="images\tiruparan.jpg" width="335" height="471" >
    </div>
  </div>
</div>










<% session.setAttribute("email",email);
session.setAttribute("name",name);}%>


</body>
</html>
