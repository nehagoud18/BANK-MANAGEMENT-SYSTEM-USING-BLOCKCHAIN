
          
		 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		    <style type="text/css">
<!--
.style1 {color: #FFFF00}
.style2 {color: #FF0000}
.style3 {color: #FFFFFF}
-->
            </style>
		      




          <title>A_View_All_Datasets_By_Blockchain</title><h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s111,hsign;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(BTHashcode) from datasets";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from datasets where BTHashcode = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s111=rs.getString(10);
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				 
		
			<table width="1200" height="144" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
         <tr>
         	  
			<th height="78" bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">Tid	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">CustomerId	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">Surname	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">CreditScore	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">Geography	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">Gender	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">Age	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">Tenure	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">BankingType	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">KYC	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">Balance	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">NumOfProducts	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">HasCrCard	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">IsActiveMember	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">EstimatedSalary	</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">Exited</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">Hashcode</span></th>
<th bgcolor="#FFFF00"><span class="style10 style6 style5 style3 style1 style1">BTHashcode</span></th>
        </tr>
		   
		 
         <h3 align="center">
<p align="center" class="style1"><span class="style1">Banking Type Chain--->::</span> <%=s111%><br>
			    <span class="style1">Banking Type Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
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
	      </div>  
			  <tr>
			  
             <td  width="74" height="60" align="center" valign="middle" ><span class="style7 style2">
                <%out.println(s1);%>
              </span></td>
              <td  width="68" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s2);%>
              </span></td>
              <td  width="85" height="60" align="center" valign="middle"><span class="style7 style2">
              <%out.println(s3);%> 
             
              </span></td>
              <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s4);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s5);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s6);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s7);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s8);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s9);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s10);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s11);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s12);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s13);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s14);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s15);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s16);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s17);%>
              
              </span></td>
			  <td  width="103" height="60" align="center" valign="middle"><span class="style7 style2">
              <%out.println(s18);%>            </tr>
 	
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		  
		  
        