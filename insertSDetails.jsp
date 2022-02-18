<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
           
Class.forName("com.mysql.jdbc.Driver");
    
Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/register","root","raj");
 
PreparedStatement st = con.prepareStatement("insert into regis values(?,?,?,?,?);");
 
st.setString(1, String.valueOf(request.getParameter("oldownername")));
        
st.setString(2, String.valueOf(request.getParameter("name")));
          
st.setString(3, String.valueOf(request.getParameter("size")));
  
st.setString(4, String.valueOf(request.getParameter("place")));
       
st.setString(5,String.valueOf(request.getParameter("district")));
  
st.executeUpdate();
        
st.close();

con.close();

response.sendRedirect("studentViewAll.jsp");
     
   }
 catch (Exception e) 
{

e.printStackTrace();

}
%>

<!DOCTYPE html>

<html>
 
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
 </head>
  
<body bgcolor = red>
        
   
</body>

</html>
