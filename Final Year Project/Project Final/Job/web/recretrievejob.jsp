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
        cursor: pointer;
		
}th, td {
    
  border-style: ridge;
  border-radius: 10px;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #FFE7C7;}
    </style>
<body>
    <div align="center">
        <h1><font face="Verdana" color="#AF69EE" size="4">HERE ARE THE DETAILS ABOUT THE DIFFERENT TYPES OF JOBS POSTED BY THE RECRUITERS USING Fo-DRA ALGORITHM </font></h1></div>
<table border="0"align="center">
    
<tr >

<th><font face="Verdana" size="2">FIRST NAME</font></th>
<th><font face="Verdana" size="2">LAST NAME</font></th>
<th><font face="Verdana" size="2">EMAIL</font></th>
<th><font face="Verdana" size="2">COMPANY NAME</font></th>
<th><font face="Verdana" size="2">COMPANY URL(OPTIONAL)</font></th>
<th><font face="Verdana" size="2">JOB TITLE</font></th>
<th><font face="Verdana" size="2">LOCATION</font></th>
<th><font face="Verdana" size="2">JOB DESCRIPTION</font></th>
<th><font face="Verdana" size="2">VACANCIES</font></th>


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
<td><font face="Verdana" size="2"><%=resultSet.getString("FirstName") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("Lastname") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("EmailId") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("CompanyName") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("ComapnyUrl") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("title") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("Location") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("jd") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("vacancies") %></td>





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
<form action="recprofile.html" method="get">
    <input type="submit" value="Go Back">
</form></div>
</body>
</html>