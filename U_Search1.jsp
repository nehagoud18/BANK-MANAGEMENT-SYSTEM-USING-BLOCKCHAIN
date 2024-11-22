<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Fresh Fruits</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style15 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style17 {
	font-size: 16px;
	color: #FFFFFF;
}
.style19 {color: #FFFF00}
.style20 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style17">Cyber Physical Customer Management for Internet of Robotic Things Enabled Banking</a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><span><big>Cyber Physical Customer Management for Internet of Robotic Things Enabled Banking</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>Cyber Physical Customer Management for Internet of Robotic Things Enabled Banking</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><big>Cyber Physical Customer Management for Internet of Robotic Things Enabled Banking</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <p class="style15">View Banking Dataset Details !!! </p>
      <p class="style15">&nbsp;</p>
      <p class="style15"><a href="user_main.jsp">Back</a></p>
      <table width="650" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
            <tr>

 <th height="35" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">Tid	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">CustomerId	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">Surname	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">CreditScore	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">Geography	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">Gender	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">Age	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">Tenure	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">BankingType	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">KYC	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">Balance	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">NumOfProducts	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">HasCrCard	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">IsActiveMember	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">EstimatedSalary	</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">Exited</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">Hashcode</span></th>
<th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1 style19">BTHashcode</span></th>
            </tr>
			
			 
			 <%
            

		    String Tid=request.getParameter("Tid");
		  
           String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21;
	       int i=0,k=0,rank1=0;
  try 
	{	
  String str="select * from datasets where Tid='"+Tid+"' "; 
  Statement st=connection.createStatement();
   ResultSet rs=st.executeQuery(str);
   	   
	if ( rs.next() )
	   {
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		s6=rs.getString(7);
		s7=rs.getString(8);
		s8=rs.getString(9);
		s9=rs.getString(10);
		s10=rs.getString(11);
		s11=rs.getString(12);
		s12=rs.getString(13);
		s13=rs.getString(14);
		s14=rs.getString(15);
		s15=rs.getString(16);
		s16=rs.getString(17);
		s17=rs.getString(18);
		s18=rs.getString(19);
		

%>
          </p>
          
				 				<tr >
								    
								  	  <td  width="74" height="60" align="center" valign="middle" ><span class="style7 style2 style20">
                <%out.println(s1);%>
              </span></td>
              <td  width="68" height="60" align="center" valign="middle"><span class="style7 style2 style20">
                <%out.println(s2);%>
              </span></td>
              <td  width="85" height="60" align="center" valign="middle"><span class="style7 style2 style20">
              <%out.println(s3);%> 
             
              </span></td>
              <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s4);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s5);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s6);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s7);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s8);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s9);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s10);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s11);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s12);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s13);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s14);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s15);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s16);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2 style20">
               <%out.println(s17);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style20"><span class="style7 style2">
              <%out.println(s18);%>              
              </span></td>
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
      <div class="clr">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><a href="user_main.jsp"></a></p>
      </div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
</body>
</html>
