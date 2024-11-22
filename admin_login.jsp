<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin LogIn</title>
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
var na3=document.s.adminid.value;
if(na3=="")

{
alert("Please Enter Admin Name");
document.s.adminid.focus();
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


}
</script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {font-size: 12px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style1">Cyber Physical Customer Management for Internet of Robotic Things Enabled Banking</a></h1>
      </div>
        	          <p>&nbsp;</p>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="admin_login.jsp"><span>ADMIN</span></a></li>
          <li><a href="user_login.jsp"><span>USER</span></a></li>
		  
		  
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
          <h2 class="star" align="center"><span>Admin Log In </span></h2>
          <p class="star" align="center">&nbsp;</p>
          <form name="s" action="Authentication.jsp?type=<%="admin"%>" method="post" onSubmit="return valid()"  ons target="_top"><div align="center">
		  <table border="0" width="57%" height="150">
      <tr>
        <td height="25" colspan="2"><p align="center"><img src="images/alogin.jpg" width="185" height="159" /></p>          </td>
        </tr>
      <tr>
        <td width="51%" height="25"><div align="left"><font color="#000000"><b><font size="5" face="Courier New, Courier, monospace">User Name:</font></b></font></div></td>
        <td width="49%" height="25">
  <input type="text"  name="adminid" size="15"></td>
      </tr>
      <tr>
        <td width="51%" height="25"><div align="left"><font color="#000000"><b><font size="5" face="Courier New, Courier, monospace">Password:</font></b></font></div></td>
        <td width="49%" height="25">
  <input type="password"  name="pass" size="15"></td>
      </tr>
      <tr>
        <td height="40" colspan="2">
        <p align="center">
          <input type="submit"  value="Login" name="B1" />
          <input type="reset" value="Reset" name="B2">
        </td>
      </tr>
    </table>
    
  </div>
</form>
		
		
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style2">
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
