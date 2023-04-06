<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String fs=request.getParameter("FirstName"); 
String c=request.getParameter("LastName");
String l=request.getParameter("EmailId");
String jt=request.getParameter("CompanyName"); 
String a=request.getParameter("ComapnyUrl"); 
String g=request.getParameter("title"); 
String p=request.getParameter("Location"); 
String add=request.getParameter("jd"); 
String email=request.getParameter("vacancies"); 

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "skill";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <style>
        input[type=submit] {
        background-color: #0041C2;
		width:10%;
        border-style: outset;
		border-color:silver;
        color: #fff;
        padding: 7px 7px;
        text-decoration: inherit;
        margin: 2px 2px;
        cursor: pointer;}
        table{
   border: outset;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #87CEEB;}

</style>
		
<body>
    <div align="center">
        <h1><font face="Verdana" size="4" color="#AF69EE">RETRIEVED THE DATA ABOUT THE NUMBER OF RECRUITERS POSTED JOB ON THIS SITE</font></h1></div>
<table border="0"align="center">
    
<tr >

<td><font face="Times New Roman">First Name</font></td>
<td><font face="Times New Roman">Last Name</font></td>
<td><font face="Times New Roman">Email</font></td>
<td><font face="Times New Roman">Company Name</font></td>
<td><font face="Times New Roman">Company Url(optional)</font></td>
<td><font face="Times New Roman">Job Title</font></td>
<td><font face="Times New Roman">Location</font></td>
<td><font face="Times New Roman">Job Description</font></td>
<td><font face="Times New Roman">Vacancies</font></td>


</font>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from updatejob";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><font face="Times New Roman"><%=resultSet.getString("FirstName") %></td>
<td><font face="Times New Roman"><%=resultSet.getString("Lastname") %></td>
<td><font face="Times New Roman"><%=resultSet.getString("EmailId") %></td>
<td><font face="Times New Roman"><%=resultSet.getString("CompanyName") %></td>
<td><font face="Times New Roman"><%=resultSet.getString("ComapnyUrl") %></td>
<td><font face="Times New Roman"><%=resultSet.getString("title") %></td>
<td><font face="Times New Roman"><%=resultSet.getString("Location") %></td>
<td><font face="Times New Roman"><%=resultSet.getString("jd") %></td>
<td><font face="Times New Roman"><%=resultSet.getString("vacancies") %></td>





</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
<div align='center'>
<form action="recent.html" method="get">
    <input type="submit" value="Go Back">
</form></div>
</body>
</html>