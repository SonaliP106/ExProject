<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  padding: 10px;
  background-image:url( "images/2560x1440-blue-stained-glass-free-website-background-image.jpg" )
}

/* Header/Blog Title */
.header {
  padding: 30px;
  text-align: center;
  background-image:url("images/OIP.jpg");
}

.header h1 {
  font-size: 50px;
        height: 109px;
        margin-top: 0px;
    }

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color:blue;
        height: 57px;
        margin-top: 0px;
    }

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 66%;
        height: 937px;
        margin-right: 0px;
    }

/* Right column */
.rightcolumn {
  float: left;
  width: 28%;
  background-color: #f1f1f1;
  padding-left: 20px;
        height: 556px;
        margin-left: 32px;
        margin-right: 36px;
        margin-top: 21px;
    }

/* Fake image */
.fakeimg {
  background-color: #aaa;
  width: 61%;
  padding: 20px;
}

/* Add a card effect for articles */
.card {
  background-color: white;
  padding: 20px;
  margin-top: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #000000;
  margin-top: 43px;
        height: 18px;
        width: 1315px;
    }

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}
    .row
    {
        width: 1295px;
        margin-right: 184px;
    }
    .style1
    {
        font-weight: normal;
    }
</style>
</head>
<body bgcolor="#0066ff">

<div class="header" ,bgcolor="00066ff" style="background-color: #3333CC">
  <h1>Welcome to Exhibition Stall Booking</h1>
  <p>&nbsp;</p>
</div>

<div class="topnav" 
        style="border-style: solid; border-width: medium; border-color: #000000">
  <a href="home.aspx" 
        style="font-size: large; font-weight: bolder; width: 120px; height: 75px;">Home</a>
  <a href="organizerlogin.aspx" 
        style="font-size: large; font-weight: bolder; width: 120px; height: 83px;">Organizer</a>
  <a href="stalllogin.aspx" 
        style="font-size: large; font-weight: bolder; width: 120px; height: 84px;">Book stall</a>
  <a href="adminlogin.aspx"
        style="font-size: large; font-weight: bolder; width: 120px; height: 89px;">Admin</a>&nbsp;
</div>

<div class="row">
  <div class="leftcolumn">
    <div class="card" 
          style="border-style: solid; border-width: medium; border-color: #000000; background-color: #0099CC">
      <h2 class="style1"><strong>INDOOR EXHIIBITION</strong></h2>
      <h5>&nbsp;</h5>
      <div class="in" style="height:200px;">
         
          <img src="images/downloadnew.jpg" style="height: 192px; width: 803px" />
              </div>
      <p><strong>Organizer will put the exibition type is indoor.For more information about 
          exhibition the one who wants to book stall for exhhibition can view detail 
          information about exhibition.</strong></p>
    </div>
    <div class="card" 
      style="border-style: solid; border-width: medium; border-color: #000000; background-color: #0099CC">
      <h2>OUTDDOR EXHIBITION </h2>
      <h5>&nbsp;</h5>
      <div class="out" style="height:200px; margin-top: 26px;">
      <img src="images/unnamed.jpg" style="height: 208px; width: 811px" />
      
      </div>
        
      <p>&nbsp;</p>
      <p><strong>Organizer will put the exibition type is outdoor.For more information about 
          exhibition the one who wants to book stall for exhhibition can view detail 
          information about exhibition.</strong></p>
    </div>
  </div>
  <div class="rightcolumn" 
    style="border-style: solid; border-width: medium; border-color: #000000; background-color: #0099CC">>
    
      <h2>About Me</h2>
      <div class="about" style="height:187px; width: 329px;">  
          <img src="images/nav.jpg" style="height: 295px; width: 330px" /></div>
      <p>&nbsp;</p>
      <p>-</p>
      <p>&nbsp;</p>
      <p><strong>&nbsp;-From this Organizer can organizer can create detailed profile abot exhibition.</strong></p>
        <p><strong>- The one who wants to book stall can book stall and can view the information 
            about exhibition.</strong></p>
    </div>
  </div>
</div>

<div class="footer">
</div>
</body>
</html>
