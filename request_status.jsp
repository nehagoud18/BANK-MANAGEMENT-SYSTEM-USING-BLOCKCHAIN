<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Send Request & Status</title>
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
var na3=document.s.keyword.value;
if(na3=="")

{
alert("Please Enter Friend Name");
document.s.keyword.focus();
return false;
}
}
</script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style1">Cyber Physical Customer Management for Internet of Robotic Things Enabled Banking </a></h1>
      </div>
	          <p>&nbsp;</p>

      <div class="searchform"></div>
      <div class="clr"></div>
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
        <h2 class="star" align="left"><span>Send Friend Request and check Status </span></h2>
          <p class="star" align="center">&nbsp;</p>
          <div class="box">
            <div class="article">
        <p></p>
		
		
            <table width="583" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <td  width="125" valign="baseline" height="25" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
              <td  width="144" valign="baseline" height="25" style="color: #2c83b0;"><div align="center"><strong>Mobile</strong></div></td>
              <td  width="105" valign="baseline" height="25" style="color: #2c83b0;"><div align="center"><b>Address</b></div></td>
              <td  width="85" valign="baseline" height="25" style="color: #2c83b0;"><div align="center"><b>Gender</b></div></td>
              <td  width="105" valign="baseline" height="25" style="color: #2c83b0;"><div align="center"><b>Status</b></div></td>
            </tr>
		    <%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%
					  	String uname = (String)application.getAttribute("user");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username!='"+uname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								//s7=rs.getString(9);
								s8=rs.getString(10);
								
								String status="";
								String query1="select * from request where (requestfrom='"+uname+"' && requestto='"+s1+"') || (requestfrom='"+s1+"' && requestto='"+uname+"')"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								if(rs1.next())
								{
									String status1 = rs1.getString("status");
									if(status1.equals("Accepted"))
									{
										status="Friend";
									}else
									{
										status="Sent";
									}
								}else
								{
									status="Request";
								}
						
					%>
            <tr>
              <td width="118" rowspan="1" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="user_Pic2.jsp?id=<%=s1%>" style="width:90px; height:90px;">
            </a> 
              <%out.println(s1);%> </div>
		  </td>
              <td  width="144" height="72" align="center" valign="middle">&nbsp;&nbsp;
              <%out.println(s3);%></td>
              <td height="72" align="center"  valign="middle">&nbsp;&nbsp;
              <%out.println(s4);%></td>
              <td height="72" align="center"  valign="middle">&nbsp;&nbsp;
              <%out.println(s6);%></td>
              <%
						if(status.equalsIgnoreCase("Request"))
						{
						
						%>
              <td  width="105" valign="middle" height="72" style="color:#000000;"align="center"><a href="updaterequest.jsp?rname=<%=s1%>"><%=status%></a>&nbsp;</td>
              <%
						}
						else
						{
						%>
              <td  width="19" valign="baseline" height="72" style="color:#000000;"align="center"><p>&nbsp;
                </p>
                <p>
                  <%out.println(status);%>
                &nbsp;</p>
                </td>
              <%
						}
						%>
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
            <tr>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
            </tr>
          </table>
            <p>&nbsp;</p>
        <div align="center"><a href="user_main.jsp" class="style14">Back</a></div>
            <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
        </div>
      </div>
		
		
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
