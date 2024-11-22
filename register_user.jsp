<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">
function valid()
{

var na12=document.s.Network.value;
if(na12=="--Select--")

{
alert("Please Select Network");
document.s.Network.focus();
return false;
}
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}



var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na5=document.s.location.value;
if(na5=="")

{
alert("Please Enter Your location");
document.s.location.focus();
return false;
}

var dob=document.s.dob.value;
if(dob=="")

{
alert("please Enter Your Date Of Birth");
document.s.dob.focus();
return false;
}

var na9=document.s.gender.value;
if(na9=="--Select--")

{
alert("Please Enter Your Gender");
document.s.gender.focus();
return false;
}

var na10=document.s.pincode.value;
if(na10=="")

{
alert("please Enter Your Pincode");
document.s.pincode.focus();
return false;
}

var na11=document.s.pic.value;
if(na11=="")

{
alert("please Select Picture");
document.s.pic.focus();
return false;
}




}
</script>
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style3 {color: #FF0000; font-weight: bold; }
.style14 {font-weight: bold}
.style15 {color: #FF0000; font-size: 24px; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style15">Cyber Physical Customer Management for Internet of Robotic <br />
        Things Enabled Banking </a></h1>
      </div>
	          <p>&nbsp;</p>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>HOME PAGE</span></a></li>
          <li><a href="admin_login.jsp"><span>ADMIN</span></a></li>
          <li class="active"><a href="user_login.jsp"><span>USER</span></a></li>
		  
		  
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><span><big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>.</span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
          <h2 align="left" class="star style1">New User Registration Details </h2>
        <form name="s" action="UserRegisterAuthentication.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top"> 
		  
		  
          <label for="network"></label>
          <p class="style3">&nbsp;</p>
		  <span class="style3">
		  <label for="name">User Name (required)</label>
          </span>
		  <p class="style3">
            <input id="name" name="userid" class="text" />
          </p>
          <span class="style3">
          <label for="password">Password (required)</label>
          </span>
          <p class="style3">
            <input type="password" id="password" name="pass" class="text" />
          </p>
          <span class="style3">
          <label for="email">Email Address (required)</label>
          </span>
          <p class="style3">
            <input id="email" name="email" class="text" />
          </p>
          <span class="style3">
          <label for="mobile">Mobile Number (required)</label>
          </span>
          <p class="style3">
            <input id="mobile" name="mobile" class="text" />
          </p>
          <span class="style3">
          <label for="name">Location (required)</label>
          </span>
          <p class="style3">
            <input id="name" name="location" class="text" />
          </p>
          <span class="style3">
          <label for="dob">Date of Birth (required)<br />
          </label>
          </span>
          <p class="style3">
            <input id="dob" name="dob" class="text" />
          </p>
          <span class="style3">
          <label for="gender">Select Gender (required)</label>
          </span>
          <p class="style3">  
            <select id="s1" name="gender" style="width:180px;" class="text">
              <option>--Select--</option>
              <option>MALE</option>
              <option>FEMALE</option>
            </select>
          </p>
          <span class="style3">
          <label for="pincode">Enter Pincode (required)</label>
          </span>
          <p class="style3">
            <input id="pincode" name="pincode" class="text" />
          </p>
          <span class="style3">
          <label for="location"></label>
          </span>
          <p class="style3">
            <label for="pic">Select Profile Picture (required)</label>
            <input type="file" id="pic" name="pic" class="text" />
          </p>
          <p><br />
              <input name="submit" type="submit" value="REGISTER" />
          </p>
          <p align="center" class="style14"><a href="user_login.jsp" class="style14">Back</a></p>
      </form>
		
		
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home Page</a></li>
            <li><a href="admin_login.jsp">Admin</a></li>
            <li class="active"><a href="user_login.jsp">User</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
