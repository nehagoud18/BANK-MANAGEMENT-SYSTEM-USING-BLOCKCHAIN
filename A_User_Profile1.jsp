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
.style3 {color: #FFFF00}
.style4 {font-size: 10px}
.style5 {font-size: 12px}
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
          <h2 class="star" align="center"><span>View User Profile </span></h2>
          <p class="star" align="center">&nbsp;</p>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>

<table width="600" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
<%@ include file="connect.jsp" %>
					<%
						
						String user1=request.getParameter("value");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user1+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
					%>
					<tr><td width="244" rowspan="8" >
						<div style="margin:10px 13px 10px 13px;" >
                		<a class="#" id="img1" href="#" >
							<input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:200px; height:230px;"  />
				   		</a>                	</div>
					</td>
					<tr/>
					<tr>
					  <td  width="170" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style8 style3 style5" style="margin-left:20px;">Username</div></td>
						<td  width="174" valign="middle" height="40" style="color:#000000;"><div align="left" class="style4" style="margin-left:20px;">
						  <div align="center">
						    <%out.println(s1);%>
					      </div>
						</div></td>
					</tr>
					<tr>
					  <td  width="170" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style8 style3 style5" style="margin-left:20px;">E-Mail</div></td>
						<td  width="174" valign="middle" height="40" style="color:#000000;"><div align="left" style="margin-left:20px;">
						  <div align="center">
						    <%out.println(s2);%>
					      </div>
						</div></td>
					</tr>
					<tr>
					  <td  width="170" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style8 style3 style5" style="margin-left:20px;">Mobile</div></td>
						<td  width="174" valign="middle" height="40"><div align="left" style="margin-left:20px;">
						  <div align="center">
						    <%out.println(s3);%>
					      </div>
						</div></td>
					</tr>
					<tr>
					  <td  width="170" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style8 style3 style5" style="margin-left:20px;">Date Of Birth</div></td>
						<td  width="174" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px;">
						  <div align="center">
						    <%out.println(s5);%>
					      </div>
						</div></td>
					</tr>
					<tr>
					  <td  width="170" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style8 style3 style5" style="margin-left:20px;">Gender</div></td>
						<td  width="174" align="left" valign="middle" height="40"><div align="left" style="margin-left:20px;">
						  <div align="center">
						    <%out.println(s6);%>
					      </div>
						</div></td>
					</tr>
					<tr>
					  <td   width="170" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style8 style3 style5" style="margin-left:20px;">Address</div></td>
						<td  width="174" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;">
						  <div align="center">
						    <%out.println(s4);%>
					      </div>
						</div></td>
					</tr>
				
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		  </table>
<p>&nbsp;</p>
<p align="center"><a href="A_View_All_Posts.jsp">Back</a></p>
</div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style2 style5">
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

