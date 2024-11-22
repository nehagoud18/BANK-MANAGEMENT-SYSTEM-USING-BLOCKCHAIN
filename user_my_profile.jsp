<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>My Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js">
</script>
<style type="text/css">
<!--
.style1 {font-size: 10px}
.style2 {font-size: 12px}
.style3 {color: #FFFFFF}
.style4 {font-size: 12px; color: #FFFFFF; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style1">Cyber Physical Customer Management for Internet of Robotic Things Enabled Banking </a></h1>
      </div>
      <p>&nbsp;</p>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
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
          <h2 class="star" align="left"><span>My Profile </span></h2>
          <p class="star" align="center">&nbsp;</p>
          
		  
		  <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%
						
						String user=(String )application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s5=rs.getString(7);
								s4=rs.getString(10);
								
								
								
								
								
								
					%>
        <tr>
          <td width="230" rowspan="7" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
              <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="user"%>" style="width:200px; height:200px;">
          </a></div></td>
        </tr>
		
        <tr>
          <td  width="145" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style4 style14 style7 style15 style20 style8 style9 style2 style3" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
          <td  width="164" height="40" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="left" class="style23 style9 style10 style2 style3" style="margin-left:20px;">
            <%out.println(s1);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style4 style14 style7 style15 style20 style8 style9 style2 style3" style="margin-left:20px;"><strong>Mobile</strong></div></td>
          <td  width="164" height="40" valign="middle" bgcolor="#FF0000"><div align="left" class="style23 style9 style10 style2 style3" style="margin-left:20px;">
            <%out.println(s2);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style4 style14 style7 style15 style20 style8 style9 style2 style3" style="margin-left:20px;"><strong>Location</strong></div></td>
          <td  width="164" height="40" align="left" valign="middle" bgcolor="#FF0000"><div align="left" class="style23 style9 style10 style2 style3" style="margin-left:20px;">
            <%out.println(s3);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style4 style14 style7 style15 style20 style8 style9 style2 style3" style="margin-left:20px;"><strong>Date of Birth</strong></div></td>
          <td  width="164" height="40" align="left" valign="middle" bgcolor="#FF0000"><div align="left" class="style23 style9 style10 style2 style3" style="margin-left:20px;">
            <%out.println(s5);%>
          </div></td>
        </tr>
        <tr>
          <td   width="145" height="51" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style4 style14 style7 style15 style20 style8 style9 style2 style3" style="margin-left:20px;"><strong>Status</strong></div                        ></td>
          <td  width="164" height="51" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left">
              <div align="left" class="style23 style9 style10 style2 style3" style="margin-left:20px;">
                <%out.println(s4);%>
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
		  
		  
		  
		        <div align="center">
		          <p>&nbsp;</p>
		          <p><a href="user_main.jsp" class="style14">Back</a></p>
	            </div>

		
        <p>&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="user_main.jsp">User Main </a></li>
            <li><a href="user_login.jsp">Log Out</a></li>
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
