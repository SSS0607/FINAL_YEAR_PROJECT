<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String jt=request.getParameter("jobtitle"); 
String c=request.getParameter("course");
String l=request.getParameter("location");
String s=request.getParameter("salary");
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
    
    <style type="text/css">
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
		
        }table{
   width: 100%;
 
}

th, td {
 border-style: ridge;
  border-radius: 10px;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #FFE5B4;}
      

    </style>
    
<body>
    <div align="center">
<h1><font face="Verdana" color="#AF69EE" size="4">HERE ARE THE DETAILS ABOUT THE DIFFERENT TYPES OF JOBS APPLIED BY THE USERS USING Fo-DRA ALGORITHM </font></h1></div>
<table border="0" align="center">
<tr>

<th><font face="Verdana" size="2">JOB TITLE</font></td>
<th><font face="Verdana" size="2">COURSE</font></td>
<th><font face="Verdana" size="2">LOCATION</font></td>
<th><font face="Verdana" size="2">SALARY</font></td>
</font>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from job";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><font face="Verdana" size="2"><%=resultSet.getString("jobtitle") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("course") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("location") %></td>
<td><font face="Verdana" size="2"><%=resultSet.getString("salary") %></td>

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
<div align="center">
<form action="userprofile.html" method="get">
    <input type="submit" value="Go Back">
</form></div>
</body>
</html>