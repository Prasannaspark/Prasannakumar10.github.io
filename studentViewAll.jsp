
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  
<head>
   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
   <title>JSP Page</title>
 
   </head>
  
  <body bgcolor = aquamarine>
  
   <table border="1">
     
   <tr>
   
  <th>OLdowner</th>
       
  <th>Name</th>
      
  <th>land size</th>
            
  <th>place</th>
             
 <th>district</th>
     
   </tr>
     
<%
    try{
           
 Class.forName("com.mysql.jdbc.Driver");
           
 Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/register","root","raj");
           
 PreparedStatement st = con.prepareStatement("Select * from regis");
 
            
  ResultSet rs = st.executeQuery();
          
while(rs.next())
{
     
  %>
       
<tr>
     
<td><%=rs.getString("oldownername")%></td>
      
<td><%=rs.getString("name")%></td>
        
<td><%=rs.getString("size")%></td>
       
<td><%=rs.getString("place")%></td>
            
<td><%=rs.getString("district")%></td>
       
  </tr>
  
 <%
            
 }
 }
catch (Exception e)
{
         
e.printStackTrace();
     
}
      
%>
   

</table>
   
</body>

</html>
