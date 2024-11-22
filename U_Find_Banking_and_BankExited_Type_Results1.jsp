<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Find_Banking_Type1</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style3 {font-size: 18px}
.style6 {color: #000000; font-size: 16px; }
.style10 {color: #FFFF00}
.style11 {color: #FFFFFF}
.style12 {
	font-size: 16px;
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
        <h1><a href="index.html" class="style1"><span class="style3">Cyber Physical Customer Management for Internet of Robotic Things Enabled Banking</span><br />
        </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="293" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h1 align="left" class="style12" style="color:#FF0033">Banking and Bank Exited  Type Results !!! <br />
          </h1>
          <table width="415" height="92" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr bgcolor="#99FF33">
              <td  width="212" height="36" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style11 style10">Banking Type Results Type </div></td>
			  <td  width="193" height="36" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style11 style10">Bank Exited Type Results Type </div></td>
            </tr>
            <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import="java.sql.*"%>
            <%@ include file="connect.jsp" %>
            <%@ page import="java.util.Date" %>
            <%@ page import ="java.security.Key" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="java.math.BigInteger" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
            <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
            <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0,count=0;
try 
{

    String Tid=request.getParameter("Tid");
  
   
 
	String query="select * from datasets where Tid='"+Tid+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
	
		
		s2=rs.getString(10);
		s3=rs.getString(17);
				
			
		%>
            <tr bgcolor="#00FFFF">
              <td  width="212" height="50" valign="baseline" nowrap="nowrap" bgcolor="#FFFFFF" style="color:#000000;"><div align="center">
                  <%out.println(s2);%>
              </div></td>
			  <td  width="193" height="50" valign="baseline" nowrap="nowrap" bgcolor="#FFFFFF" style="color:#000000;"><div align="center">
                  <%out.println(s3);%>
              </div></td>
            </tr>
            <%
						
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <div class="clr"></div>
        </div>
        <p class="pages"><a href="user_main.jsp">Back</a></p>
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