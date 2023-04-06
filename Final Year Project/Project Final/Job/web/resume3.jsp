<html>
<head><title>JSP with JDBC</title></head>
<body>
<%@page import="java.sql.*" %>
<%
   try
     {
      String s8=request.getParameter("Address"); 
      String s9=request.getParameter("exp");
      String s10=request.getParameter("project");
      String s11=request.getParameter("language1");
      String s12=request.getParameter("language2");
      String s13=request.getParameter("language3");
      String s18=request.getParameter("OtherHobby");
      
      
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill","root","");
       Statement stmt = con.createStatement();
       Statement st=con.createStatement();
st.executeUpdate("insert into resume3 values('"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s18+"')");
      out.println("<div align='center'><br><br><br><br>");
out.println("<p><font color='Skyblue'>You Applied for this job Successfully</p>");
out.println("<img src='https://media.tenor.com/Hw7f-4l0zgEAAAAC/check-green.gif' height='100'></img><br>");
out.println("<br><form action='index2.html'>");
out.println("<input type='submit' value='Continue'>");
out.println("</form>");
       %>
     
      <% }catch(ClassNotFoundException e){out.println(e);
      
      }; %>
 
</body>
</html>