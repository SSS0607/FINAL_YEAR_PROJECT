<html>
<head><title>JSP with JDBC</title></head>
<body>
<%@page import="java.sql.*" %>
<%
   try
     {
      String fs=request.getParameter("FirstName"); 
      String ls=request.getParameter("LastName");
      String crp=request.getParameter("EmailId");
      String conp=request.getParameter("CompanyName");
      String ph=request.getParameter("ComapnyUrl");
      String ea=request.getParameter("title");
      String add=request.getParameter("Location");
      String g=request.getParameter("jd");
      String gen=request.getParameter("vacancies");
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill","root","");
       Statement stmt = con.createStatement();
       Statement st=con.createStatement();
st.executeUpdate("insert into Updatejob values('"+fs+"','"+ls+"','"+crp+"','"+conp+"','"+ph+"','"+ea+"','"+add+"','"+g+"','"+gen+"')");
      
       %>
     
      <% }catch(ClassNotFoundException e){out.println(e);
      
      }; %>
 <br><br><br><br>
 <div align="center">
        <p><font face="Times New Roman" size="5" color="Lightgreen">Your Details has been updated successfully!!!</font></p>
        <form action="index2.html" method="post">
            <input type="submit" value="Back to home"></div></form>
</body>
</html>