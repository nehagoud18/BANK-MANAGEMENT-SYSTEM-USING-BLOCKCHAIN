<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All End Users</title>
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
.style1 {color: #FFFF00}
.style2 {color: #FF0000}
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
          <h2 class="star" align="center"><span>All End Users </span></h2>
          <p class="star" align="center">&nbsp;</p>
          
		  
		  <div id="templatemo_right_section">
        <table width="664" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="39" height="34"  valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style5 style6 style7 style21 style15"><strong>ID</strong></div></td>
            <td  width="118" height="34" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style5 style6 style7 style21 style15"><strong>User Image</strong></div></td>
            <td  width="112" height="34" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style5 style6 style7 style21 style15"><strong>User Name</strong></div></td>
            <td  width="100" height="34" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style5 style6 style7 style21 style15"><strong>Email</strong></div></td>
            <td  width="108" height="34" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style5 style6 style7 style21 style15"><strong>Date Of Birth</strong></div></td>
            <td  width="100" height="34"  valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style5 style6 style7 style21 style15"><strong>Status</strong></div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(7);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(10);
							
								
								
								
								
							
						
					%>
          <tr>
            <td height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style22 style4 style5 style2">&nbsp;</p>
                <div align="center" class="style22 style4 style5 style2">
                  <%out.println(i);%>
                  <p>&nbsp; </p>
                </div></td>
            <td width="118" rowspan="1" bgcolor="#FFFFFF" ><div class="style22 style4 style5 style2" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="user"%>" style="width:90px; height:90px;">
            </a> </div></td>
            <td height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style22 style4 style5 style2">&nbsp;</p>
                <div align="center" class="style22 style4 style5 style2">
                  <%out.println(s1);%>
                  <p>&nbsp; </p>
                </div></td>
            <td height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style22 style4 style5 style2">&nbsp;</p>
                <div align="center" class="style22 style4 style5 style2">
                  <%out.println(s2);%>
                  <p>&nbsp; </p>
                </div></td>
            <td height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style22 style4 style5 style2">&nbsp;</p>
                <div align="center" class="style22 style4 style5 style2">
                  <%out.println(s3);%>
                  <p>&nbsp; </p>
                </div></td>
            <%
						if(s6.equalsIgnoreCase("waiting"))
						{
						
						%>
            <td  width="100" height="0"align="center" valign="baseline" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style22 style4 style5 style2">
                <p>&nbsp;</p>
            <a href="admin_Status.jsp?id=<%=i%>">waiting</a> </div></td>
            <%
						}
						else
						{
						%>
            <td width="71" height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style22 style4 style5 style2">&nbsp;</p>
                <div align="center" class="style22 style4 style5 style2">
                  <%out.println(s6);%>
            </div></td>
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
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
          </tr>
        </table>
        </p>
        <p>&nbsp;</p>
<div align="center"><a href="admin_main.jsp">Back</a></div>      </div>
		  
		  
		
		
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="admin_main.jsp">Admin Main</a></li>
            <li><a href="admin_login.jsp">Log Out</a></li>
            <li><a href="admin_main.jsp">Back</a></li>
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
