<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js">
function valid()
{
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


}
</script>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {font-size: 12px}
.style3 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style3">Cyber Physical Customer Management for Internet  <br />
        of Robotic Things Enabled Banking  </a></h1>
		
		
      </div>
        <p>&nbsp;</p>
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
          <h2 class="star" align="center"><span>Welcome :: Blockchain Admin </span></h2>
          <p><img src="images/abanner.jpg" width="615" height="222" /></p>
        <p>&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Admin Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style2">
            <li><a href="admin_all_users.jsp">View all End Users and Authorize</a></li>
			
			<li><a href="A_View_All_Datasets.jsp">View All Datasets</a></li>
			
			<li><a href="A_View_All_Datasets_By_Blockchain.jsp">View All Datasets By Banking Type Blockchain</a></li>
			
			<li><a href="A_View_All_Datasets_By_Exited_Status_Blockchain.jsp">View All Datasets By Exited Status Blockchain</a></li>
			
			<li><a href="A_View_All_Banking_Results.jsp">View All Banking Type Results</a></li>
			
			<li><a href="A_View_All_Banking_Exited_Type_Results.jsp">View All Banking Exited Type Results</a></li>
			
			
			<li><a href="A_View_All_Banking_Active_Type_Results.jsp">View All Banking Active Type Results</a></li>
			
            <li><a href="admin_login.jsp">Log Out</a></li>
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
