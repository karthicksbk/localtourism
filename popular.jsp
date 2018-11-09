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
</style>
</head>
<body>
<%@include file="homepage.html" %>
<div style="text-align:center">
  <h2>Responsive Zig Zag Layout Example</h2>
  <p>Resize the browser window to see the effect.</p>
</div>

<!-- The App Section -->
<div class="container">
  <div class="row">
    <div class="column-66">
      
      <h1 class="large-font" style="color:MediumSeaGreen;"><b>Meenakshi Amman Temple</b></h1>
      <p><span style="font-size:36px">Take photos like a pro.</span> Meenakshi Temple, also referred to as Meenakshi Amman or Minakshi-Sundareshwara Temple, is a historic Hindu temple located on the southern bank of the Vaigai River in the temple city of Madurai, Tamil Nadu, India. It is dedicated to Meenakshi, a form of Parvati, and her consort, Sundareshwar, a form of Shiva. The temple is at the center of the ancient temple city of Madurai mentioned in the Tamil Sangam literature, with the goddess temple mentioned in 6th century CE texts.</p>
      
      
      
      <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pname,paddress,distance,time,vehicle from onetoone where pname='Meenakshi Amman Temple'");

ResultSet rs=pst.executeQuery();
while(rs.next()){
    
%>

<b>Place Name </b>:<tr><%=rs.getString("pname") %></tr><br>
<b>Address :</b><tr><%=rs.getString("paddress") %></tr><br>
<b>Distance </b>(from Madurai Periyar Bus stand ) :<tr><%=rs.getString("distance") %></tr><br>
<b>Average Time to Reach :</b><tr><%=rs.getString("time") %></tr><br>
<b>To Reach By :</b><tr><%=rs.getString("vehicle") %></tr><br>

<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>

      
      
      
      <button class="button">Gallery</button>
      
    </div>
    <div class="column-33">
        <img src="/w3images/img_app.jpg" width="335" height="471">
    </div>
  </div>
</div>

<!-- Clarity Section -->
<div class="container" style="background-color:#f1f1f1">
  <div class="row">
    <div class="column-33">
      <img src="/w3images/app5.jpg" alt="App" width="335" height="471">
    </div>
    <div class="column-66">
      
      <h1 class="large-font" style="color:red;"><b>Azagar Temple</b></h1>
      <p><span style="font-size:24px">A revolution in resolution.</span> Alagar koyil is a village in Madurai district in the South Indian state of Tamil Nadu. The history and living of the village is centered around Kallazhagar Temple. Constructed in the Dravidian style of architecture, the temple is glorified in the Divya Prabandha, the early medieval Tamil canon of the Azhwar saints from the 6th?9th centuries AD. It is one of the 108 Divyadesam dedicated to Vishnu, who is worshipped as Kallazhagar and his consort Lakshmi as Thirumamagal.</p>
      
      
      
          <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pname,paddress,distance,time,vehicle from onetoone where pname='Alagar temple'");

ResultSet rs=pst.executeQuery();
while(rs.next()){
    
%>

<b>Place Name </b>:<tr><%=rs.getString("pname") %></tr><br>
<b>Address :</b><tr><%=rs.getString("paddress") %></tr><br>
<b>Distance </b>(from Madurai Periyar Bus stand ) :<tr><%=rs.getString("distance") %></tr><br>
<b>Average Time to Reach :</b><tr><%=rs.getString("time") %></tr><br>
<b>To Reach By :</b><tr><%=rs.getString("vehicle") %></tr><br>

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
      <p><span style="font-size:36px">Take photos like a pro.</span> Tirupparankundram is a suburb in Madurai district in Tamil Nadu, India. The area is part of Madurai Municipal Corporation and the first local body election for the corporation was held on 18 October 2011. Tiruppara?ku??am is known for the Thirupparamkunram Murugan temple, which is one of the Six Abodes of Murugan. It is one of the most visited tourist places in Madurai, next only to the Meenakshi Amman Temple. The Tirupparankunram Dargah is located atop the Tirupparankunram Hill.</p>
      
      
      
       <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pname,paddress,distance,time,vehicle from onetoone where pname='Thiruparankundram temple'");

ResultSet rs=pst.executeQuery();
while(rs.next()){
    
%>

<b>Place Name </b>:<tr><%=rs.getString("pname") %></tr><br>
<b>Address :</b><tr><%=rs.getString("paddress") %></tr><br>
<b>Distance </b>(from Madurai Periyar Bus stand ) :<tr><%=rs.getString("distance") %></tr><br>
<b>Average Time to Reach :</b><tr><%=rs.getString("time") %></tr><br>
<b>To Reach By :</b><tr><%=rs.getString("vehicle") %></tr><br>

<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>
      
      
      
      <button class="button">Gallery</button>
      
    </div>
    <div class="column-33">
        <img src="/w3images/img_app.jpg" width="335" height="471" >
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="column-66">
      
      <h1 class="large-font" style="color:MediumSeaGreen;"><b>Sirumalai</b></h1>
      <p><span style="font-size:36px">Take photos like a pro.</span> Sirumalai  is a region of 60,000 acres (200 km2) situated 25 km (16 mi) from Dindigul and 90 km (56 mi) from Madurai,Tamil Nadu, India. There are many high hills in the area.[1][2][3][4] Hillock International School is located in Sirumalai.[5] Sirumalai is a dense forest region with a moderate climate throughout the year. With an altitude of 1600 metres above sea level, it contains diversified flora and fauna. The hill has 18 hairpin bends. On the 18th bend is a church and a view point of Dindigul city and the "Dindigul Rock Fort". The hill contains a small waterfall as well. The famous Sirumalai banana is slowly disappearing from disease, which scientists have been unable to prevent.[6] </p>
     
      
          <%
try{
 MyCon x=new MyCon();
 Connection c=x.tcon();
PreparedStatement pst=c.prepareStatement("select pname,paddress,distance,time,vehicle from onetoone where pname='Sirumalai'");

ResultSet rs=pst.executeQuery();
while(rs.next()){
    
%>

<b>Place Name </b>:<tr><%=rs.getString("pname") %></tr><br>
<b>Address :</b><tr><%=rs.getString("paddress") %></tr><br>
<b>Distance </b>(from Madurai Periyar Bus stand ) :<tr><%=rs.getString("distance") %></tr><br>
<b>Average Time to Reach :</b><tr><%=rs.getString("time") %></tr><br>
<b>To Reach By :</b><tr><%=rs.getString("vehicle") %></tr><br>

<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>
      
      
      
      
      
      
      <button class="button">Gallery</button>
     
    </div>
    <div class="column-33">
        <img src="/w3images/img_app.jpg" width="335" height="471" >
    </div>
  </div>
</div>

</body>
</html>
