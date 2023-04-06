<html>
<head><title>JSP with JDBC</title></head>
<body>
<%@page import="java.sql.*" %>
<%
   try
     {
      String find=request.getParameter("jobtitle");
      String c=request.getParameter("course");
      String l=request.getParameter("location");
      
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill","root","");
       Statement stmt = con.createStatement();
       Statement st=con.createStatement();
       ResultSet rs = stmt.executeQuery("select * from find where jobtitle='"+find+"' and course='"+c+"'and location='"+l+"'");
       %>
     <table border=2>
     <tr><th>JobTitle</th><th>Course</th><th>Location</th></tr>
     <%
         while(rs.next())
         {
         %>
         <tr><td><%=rs.getString("jobtitle") %></td>
             <td><%=rs.getString("course") %></td>
             <td><%=rs.getString("location") %></td>
         </tr>
     <%
      }
      %>
      </table>
      <% }catch(Exception e){}; %>

</body>
</html>
